<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\SanPhamRequest;
use App\Models\DanhMuc;
use App\Models\HinhAnhSanPham;
use App\Models\SanPham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SanPhamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $title = "Thông tin sản phẩm";
        $listSanPham = SanPham::orderByDesc('is_type')->get();
        return view('admins.sanphams.index', compact('title','listSanPham'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $title = "Thêm mới sản phẩm";
        $listDanhMuc = DanhMuc::query()->get();
        return view('admins.sanphams.create', compact('title','listDanhMuc'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(SanPhamRequest $request)
    {
        if($request->isMethod('POST')){
            $params = $request->except('_token');
           
            // Chuyển đổi giá trị checkbox  thành boolean
            $params['is_new'] = $request->has('is_new') ? 1 : 0;
            $params['is_hot'] = $request->has('is_hot') ? 1 : 0;
            $params['is_hot_deal'] = $request->has('is_hot_deal') ? 1 : 0;
            $params['is_show_home'] = $request->has('is_show_home') ? 1 : 0;

            // Xử lý hình ảnh đại diện
            if($request->hasFile('hinh_anh')){
                $params['hinh_anh'] = $request->file('hinh_anh')->store('uploads/sanpham', 'public');
            } else {
                $params['hinh_anh'] = null;
            }

            // Thêm sản phẩm
            $sanPham = SanPham::query()->create($params);

            // Lấy id sản phẩm vừa thêm để thêm vào album
            $sanPhamID = $sanPham->id;

            // Xử lý thêm album
            if($request->hasFile('list_hinh_anh')){
              
                foreach ($request->file('list_hinh_anh') as $image) {
                    if($image){
                        $path = $image->store('uploads/hinhanhsanpham/id_' . $sanPhamID, 'public');
                        $sanPham->hinhAnhSanPham()->create([
                            'san_pham_id' => $sanPhamID,
                            'hinh_anh' => $path,
                        ]);
                    }
                }
            }
            return redirect()->route('admins.sanphams.index')->with('success', 'Thêm sản phẩm thành công');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $title = "Cập nhật thông tin sản phẩm";
        $listDanhMuc = DanhMuc::query()->get();
        $sanPham = SanPham::query()->findOrFail($id);
        return view('admins.sanphams.edit', compact('title','listDanhMuc','sanPham'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if ($request->isMethod('PUT')) {
            $params = $request->except('_token', '_method');
            
            // Chuyển đổi giá trị checkbox thành boolean
            $params['is_new'] = $request->has('is_new') ? 1 : 0;
            $params['is_hot'] = $request->has('is_hot') ? 1 : 0;
            $params['is_hot_deal'] = $request->has('is_hot_deal') ? 1 : 0;
            $params['is_show_home'] = $request->has('is_show_home') ? 1 : 0;
        
            $sanPham = SanPham::query()->findOrFail($id);
        
            // Xử lý hình ảnh đại diện
            if ($request->hasFile('hinh_anh')) {
                if ($sanPham->hinh_anh && Storage::disk('public')->exists($sanPham->hinh_anh)) {
                    Storage::disk('public')->delete($sanPham->hinh_anh);
                }
                $params['hinh_anh'] = $request->file('hinh_anh')->store('uploads/sanpham', 'public');
            } else {
                $params['hinh_anh'] = $sanPham->hinh_anh;
            }
        
            // Xử lý Album
            $currentImages = $sanPham->hinhAnhSanPham->pluck('id')->toArray();
            $arrayCombine = array_combine($currentImages, $currentImages);
        
            // Trường hợp xóa ảnh
            if ($request->has('list_hinh_anh')) {
                foreach ($arrayCombine as $key => $value) {
                    // Nếu không tồn tại ID thì tức là người dùng đã xóa hình ảnh đó
                    if (!array_key_exists($key, $request->list_hinh_anh)) {
                        $hinhAnhSanPham = HinhAnhSanPham::query()->find($key);
                        // Xóa hình ảnh
                        if ($hinhAnhSanPham && Storage::disk('public')->exists($hinhAnhSanPham->hinh_anh)) {
                            Storage::disk('public')->delete($hinhAnhSanPham->hinh_anh);
                            $hinhAnhSanPham->delete();
                        }
                    }
                }
            }
        
            // Trường hợp thêm hoặc sửa
            if ($request->has('list_hinh_anh')) {
                foreach ($request->list_hinh_anh as $key => $image) {
                    if (!array_key_exists($key, $arrayCombine)) {
                        if ($request->hasFile("list_hinh_anh.$key")) {
                            $path = $image->store('uploads/hinhanhsanpham/id_' . $id, 'public');
                            $sanPham->hinhAnhSanPham()->create([
                                'san_pham_id' => $id,
                                'hinh_anh' => $path,
                            ]);
                        }
                    } else if (is_file($image) && $request->hasFile("list_hinh_anh.$key")) {
                        // Trường hợp thay đổi hình ảnh
                        $hinhAnhSanPham = HinhAnhSanPham::query()->find($key);
                        if ($hinhAnhSanPham && Storage::disk('public')->exists($hinhAnhSanPham->hinh_anh)) {
                            Storage::disk('public')->delete($hinhAnhSanPham->hinh_anh);
                        }
        
                        $path = $image->store('uploads/hinhanhsanpham/id_' . $id, 'public');
                        $hinhAnhSanPham->update([
                            'hinh_anh' => $path,
                        ]);
                    }
                }
            }
        
            $sanPham->update($params);
        
            return redirect()->route('admins.sanphams.index')->with('success', 'Cập nhật sản phẩm thành công');
        }
        
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {

        $sanPham = SanPham::query()->findOrFail($id);
        // Xóa hình ảnh đại diện của sản phẩm
        if($sanPham->hinh_anh && Storage::disk('public')->exists($sanPham->hinh_anh )){
            Storage::disk('public')->delete($sanPham->hinh_anh );
        }
        $sanPham->hinhAnhSanPham()->delete();

        // Xóa tòan bộ hình ảnh trong thư mục
        $path = 'uploads/hinhanhsanpham/id_' .$id;
        if(Storage::disk('public')->exists($path )){
            Storage::disk('public')->deleteDirectory($path );
        }

        $sanPham->delete();

        return redirect()->route('admins.sanphams.index')->with('success', 'Xóa sản phẩm thành công');

    }
}
