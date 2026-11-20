//
//  MapScreen.swift
//  liveliverdonor
//
//  Created by Ritha Bobby Khleang on 11/6/26.
//

import SwiftUI
import MapKit

struct MapScreen: View {
    private let location = CLLocationCoordinate2D(
        latitude: 37.5407,
        longitude: -77.4290
    )
    private let teamPhoneNumber = "123456789"
    

    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 37.5407,
                longitude: -77.4290
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.012,
                longitudeDelta: 0.012
            )
        )
    )

    private let green = Color(red: 0.05, green: 0.42, blue: 0.32)
    private let cream = Color(red: 0.97, green: 0.96, blue: 0.94)
    private let orange = Color(red: 0.86, green: 0.35, blue: 0.19)

    var body: some View {
        VStack(spacing: 0) {
            green
                .frame(height: 55)

            Map(position: $cameraPosition) {
                Marker(
                    "Hume-Lee Transplant Center",
                    coordinate: location
                )
            }
            .frame(height: 230)
            .padding(.horizontal, 20)
            .padding(.top, 60)

            VStack(alignment: .leading, spacing: 14) {
                Text("Hume-Lee Transplant Center")
                    .font(.system(size: 20))

                Text("VCU Health’s Hume-Lee Transplant Center is a leading transplant center with a rich history dating back to 1957, known for its innovative research, expert medical team, excellent patient care, and 569 organ transplants performed in 2025.")
                    .font(.system(size: 16))
                    .foregroundStyle(Color(red: 0.35, green: 0.35, blue: 0.35))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(18)
            .frame(minHeight: 210, alignment: .top)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(green, lineWidth: 1)
            )
            .padding(.horizontal, 20)
            .padding(.top, 25)

            Spacer()

            HStack(spacing: 10) {
                Button("Call team") {
                    // Add phone functionality later
                }
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .background(orange)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))

                Button("Message") {
                    // Add messaging later
                }
                .frame(maxWidth: .infinity)
                .frame(height: 48)
                .foregroundStyle(green)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(green, lineWidth: 1)
                )
            }
            .font(.system(size: 17, weight: .semibold))
            .padding(.horizontal, 30)
            .padding(.bottom, 25)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(cream)
    }
}

#Preview {
    MapScreen()
}

