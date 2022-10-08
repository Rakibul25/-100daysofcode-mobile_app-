package com.example.firebase.option;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.firebase.Dobject;
import com.example.firebase.R;
import com.example.firebase.User;

public class Delete extends AppCompatActivity {
    Button dltbutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_delete);
        dltbutton = findViewById(R.id.btnDelete);

    }
}