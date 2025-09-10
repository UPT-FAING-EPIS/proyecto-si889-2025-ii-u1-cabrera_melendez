// lib/views/map_screen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../viewmodels/map_viewmodel.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MapViewModel(),
      child: const _MapScreenContent(),
    );
  }
}

class _MapScreenContent extends StatelessWidget {
  const _MapScreenContent();

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MapViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Maps con Rutas y Modos'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.map),
            onPressed: viewModel.changeMapType,
          ),
        ],
      ),
      body: Stack(
        children: [
          // Map takes full screen
          ValueListenableBuilder(
            valueListenable: viewModel.markers,
            builder: (_, markers, __) => ValueListenableBuilder(
              valueListenable: viewModel.polylines,
              builder: (_, polylines, __) => ValueListenableBuilder(
                valueListenable: viewModel.currentMapType,
                builder: (_, mapType, __) => GoogleMap(
                  onMapCreated: viewModel.onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: viewModel.initialPosition.value,
                    zoom: 12,
                  ),
                  myLocationEnabled: true,
                  myLocationButtonEnabled: false,
                  markers: markers,
                  polylines: polylines,
                  mapType: mapType,
                ),
              ),
            ),
          ),
          ValueListenableBuilder<String?>(
            valueListenable: viewModel.errorMessage,
            builder: (context, errorMessage, child) {
              if (errorMessage != null) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(errorMessage)),
                  );
                });
              }
              return const SizedBox.shrink();
            },
          ),
          Positioned(
            left: 20,
            bottom: 20,
            child: FloatingActionButton(
              onPressed: viewModel.getCurrentLocation,
              backgroundColor: Colors.red,
              tooltip: 'Ver mi ubicación',
              child: const Icon(Icons.my_location),
            ),
          ),
        ],
      ),
    );
  }

}