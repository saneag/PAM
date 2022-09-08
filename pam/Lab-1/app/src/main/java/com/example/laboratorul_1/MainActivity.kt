package com.example.laboratorul_1

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.activity_main.*
import java.lang.StrictMath.pow

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        show_result.setOnClickListener{
            if(height_input.length() == 0) {

            } else if(weight_input.length() == 0) {

            } else {
                val height: Double = height_input.text.toString().toDouble()
                val weight: Double = weight_input.text.toString().toDouble()

                val bmi: Double = weight / pow(((height / 100)), 2.0)
                bmi_result_text.text = String.format("%.2f", bmi)
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
        }
    }
}