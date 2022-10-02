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
    Button insertbutton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_insert);
        final EditText name = findViewById(R.id.name);
        final EditText id = findViewById(R.id.id);
        insertbutton = findViewById(R.id.btnInsert);
        Dobject dobject = new Dobject();
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("name", name.getText().toString());
        hashMap.put("id",id.getText().toString());
        dobject.update("-NDI2Q4iZczueDZANB06",hashMap).addOnSuccessListener(suc ->
        {
            Toast.makeText(this, "Update done", Toast.LENGTH_SHORT).show();
        }).addOnFailureListener(err ->
        {
            Toast.makeText(this, "failed", Toast.LENGTH_SHORT).show();
        });

    }
}