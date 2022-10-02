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

import java.util.HashMap;

public class Update extends AppCompatActivity {
    Button updatebutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_update);
        final EditText namen = findViewById(R.id.namen);
        final EditText idn = findViewById(R.id.idn);
        updatebutton = findViewById(R.id.btnUpdate);
        Dobject dobject = new Dobject();
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("name", namen.getText().toString());
        hashMap.put("id",idn.getText().toString());
        updatebutton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view) {
                dobject.update("-NDI4aKlhas3lDeoXDP5",hashMap).addOnSuccessListener(suc ->
                {
                    Toast.makeText(Update.this, "Update done", Toast.LENGTH_SHORT).show();
                }).addOnFailureListener(err ->
                {
                    Toast.makeText(Update.this, "failed", Toast.LENGTH_SHORT).show();
                });
            }
        });


    }
}