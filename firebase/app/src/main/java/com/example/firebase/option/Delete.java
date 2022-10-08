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
        Dobject dobject = new Dobject();
        dltbutton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                dobject.remove("-NDI4aKlhas3lDeoXDP5").addOnSuccessListener(suc ->
                {
                    Toast.makeText(Delete.this, "Delete done", Toast.LENGTH_SHORT).show();
                }).addOnFailureListener(err ->
                {
                    Toast.makeText(Delete.this, "failed", Toast.LENGTH_SHORT).show();
                });
            }
        });

    }
}