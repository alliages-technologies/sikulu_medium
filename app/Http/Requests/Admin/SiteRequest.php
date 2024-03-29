<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class SiteRequest extends FormRequest
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
        return [
            'name'=>['required'],
            'quartier_id'=>['required'],
            'image_uri'=>['required']
        ];
    }

    public function messages(): array{
        return [
            'name.required'=>'La saisie du nom est obligatoire',
            'image_uri'=>'selectionnez une image',
            'quartier_id'=>'selectionnez un quartier'
        ];
    }
}
