package com.example.laboratorul_1

import android.annotation.SuppressLint
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import java.lang.StrictMath.pow

class MainActivity : AppCompatActivity() {
    @SuppressLint("SetTextI18n")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        show_result.setOnClickListener{
            error_text_height.text = if(height_input.length() == 0) "Height is required" else ""
            error_text_weight.text = if(weight_input.length() == 0) "Weight is required" else ""
            if(height_input.length() != 0 && weight_input.length() != 0) {
                val height: Double = height_input.text.toString().toDouble()
                val weight: Double = weight_input.text.toString().toDouble()

                val bmi: Double = weight / pow(((height / 100)), 2.0)
                bmi_result_text.text = String.format("%.2f", bmi)

                if(bmi < 16) {
                    bmi_category.text = "Severe Thinness"
                }
                if(bmi > 16 && bmi < 17) {
                    bmi_category.text = "Moderate Thinness"
                }
                if(bmi > 17 && bmi < 18.5) {
                    bmi_category.text = "Mild Thinness"
                }
                if(bmi > 18.5 && bmi < 25) {
                    bmi_category.text = "Normal"
                }
                if(bmi > 25 && bmi < 30) {
                    bmi_category.text = "Overweight"
                }
                if(bmi > 30 && bmi < 35) {
                    bmi_category.text = "Obese Class I"
                }
                if(bmi > 35 && bmi < 40) {
                    bmi_category.text = "Obese Class II"
                }
                if(bmi > 40) {
                    bmi_category.text = "Obese Class III"
                }
            }
        }
        reset.setOnClickListener {
            if(height_input.length() != 0) {
                height_input.setText("")
            }
            if(weight_input.length() != 0) {
                weight_input.setText("")
            }
            if(bmi_result_text.length() != 0) {
                bmi_result_text.text = ""
            }
            if(error_text_weight.length() != 0) {
                error_text_weight.text = ""
            }
            if(error_text_height.length() != 0) {
                error_text_height.text = ""
            }
            if(bmi_category.length() != 0) {
                bmi_category.text = ""
            }
        }
    }
}