<?php

namespace App\Http\Requests\Admin;

use App\Models\Classe;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class ClasseRequest extends FormRequest
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
            'serie_id' => ['required', Rule::unique('classes')->ignore($this->id)],
            'level_id' => ['required', Rule::unique('classes')->ignore($this->id)]
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
            'serie_id.required' => 'La serie est obligatoire',
            'level_id.required' => 'La matiere est obligatoire',
            'serie_id.unique' => 'La serie doit etre unique',
            'level_id.unique' => 'Le niveau doit etre unique',
        ];
    }
}
