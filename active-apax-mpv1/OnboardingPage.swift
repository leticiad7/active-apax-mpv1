// OnboardingPage.swift
import SwiftUI

struct OnboardingPage: View {
    @State private var age = ""
    @State private var weight = ""
    @State private var height = ""
    @State private var selectedGender = "Select Gender"
    
    let genders = ["Male", "Female", "Other"]

    var body: some View {
        VStack(spacing: 16) {
            Text("Welcome to ActiveApax")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top, 40)
            
            Text("Your journey to ideal health starts here!")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
            
            Spacer()
            
            // Compact Gender Picker
            HStack {
                Text("Gender:")
                    .foregroundColor(.gray)
                Spacer()
                Picker("Gender", selection: $selectedGender) {
                    ForEach(genders, id: \.self) { gender in
                        Text(gender).tag(gender)
                    }
                }
                .pickerStyle(MenuPickerStyle())
            }
            .padding(.horizontal, 30)
            
            TextField("Enter Age", text: $age)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding(.horizontal, 30)
            
            TextField("Enter Weight (kg)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal, 30)
            
            TextField("Enter Height (cm)", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding(.horizontal, 30)
            
            Spacer()
            
            Button(action: {
                // Proceed to the next step or save data
            }) {
                Text("Get Started")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    OnboardingPage()
}
