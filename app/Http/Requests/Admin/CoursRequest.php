<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class CoursRequest extends FormRequest
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
            'coefficient' => ['required', ],
            'matter_id' => ['required',],
            'classe_id' => ['required', ]
        ];
    }

    /**
     * Get the error messages for the defined validation rules.
     *
     * @return array<string, string>
     */
    public function messages(): array
    {
        return [
            'coefficient.required' => 'Le coefficient est obligatoire',
            'matter_id.required' => 'La matiere est obligatoire',
            'classe_id.required' => 'La classe est obligatoire'
        ];
    }
}
