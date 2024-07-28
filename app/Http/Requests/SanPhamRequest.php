<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SanPhamRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $id = $this->route('id'); // Get the route parameter 'id'
        
        return [
            'ma_san_pham' => 'required|max:10|unique:san_phams,ma_san_pham,' . $id,
            'ten_san_pham' => 'required|max:255',
            'hinh_anh' => 'image|mimes:jpg,jpeg,png,gif,webp',
            'gia_san_pham' => 'required|numeric|min:0',
            'gia_khuyen_mai' => 'nullable|numeric|min:0|lt:gia_san_pham',
            'mo_ta_ngan' => 'nullable|string|max:255',
            'so_luong' => 'integer|min:0',
            'ngay_nhap' => 'required|date',
            'danh_muc_id' => 'required|exists:danh_mucs,id',
        ];
    }

    /**
     * Get custom error messages for validator errors.
     *
     * @return array<string, string>
     */
    public function messages(): array
    {
        return [
            'ma_san_pham.required' => 'Mã sản phẩm bắt buộc phải điền',
            'ma_san_pham.max' => 'Mã sản phẩm không được vượt quá 10 ký tự.',
            'ma_san_pham.unique' => 'Mã sản phẩm đã tồn tại',
            'ten_san_pham.required' => 'Tên sản phẩm là bắt buộc',
            'ten_san_pham.max' => 'Tên sản phẩm không được quá 255 ký tự',
            'hinh_anh.image' => 'Hình ảnh không hợp lệ',
            'hinh_anh.mimes' => 'Hình ảnh phải có định dạng jpg, jpeg, png, hoặc gif',
            'gia_san_pham.required' => 'Giá sản phẩm là bắt buộc',
            'gia_san_pham.numeric' => 'Giá sản phẩm phải là số',
            'gia_san_pham.min' => 'Giá sản phẩm phải lớn hơn 0',
            'gia_khuyen_mai.numeric' => 'Giá khuyến mãi phải là số',
            'gia_khuyen_mai.min' => 'Giá khuyến mãi phải lớn hơn hoặc bằng 0',
            'gia_khuyen_mai.lt' => 'Giá khuyến mãi phải nhỏ hơn giá sản phẩm',
            'mo_ta_ngan.max' => 'Mô tả ngắn không được vượt quá 255 ký tự',
            'so_luong.integer' => 'Số lượng phải là số',
            'so_luong.min' => 'Số lượng phải lớn hơn hoặc bằng 0',
            'ngay_nhap.required' => 'Ngày nhập bắt buộc phải điền',
            'ngay_nhap.date' => 'Ngày nhập không hợp lệ',
            'danh_muc_id.required' => 'Danh mục là bắt buộc phải chọn',
            'danh_muc_id.exists' => 'Danh mục không hợp lệ',
        ];
    }
}