// This file is generated
import XCTest
@testable import MapboxMaps

final class CircleAnnotationTests: XCTestCase {

    func testCircleSortKey() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleSortKey =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleSortKey) = layerProperties["circle-sort-key"] else {
            return XCTFail("Layer property circle-sort-key should be set to a number.")
        }
        XCTAssertEqual(circleSortKey, annotation.circleSortKey)
    }

    func testCircleBlur() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleBlur =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleBlur) = layerProperties["circle-blur"] else {
            return XCTFail("Layer property circle-blur should be set to a number.")
        }
        XCTAssertEqual(circleBlur, annotation.circleBlur)
    }

    func testCircleColor() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleColor =  StyleColor.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .string(circleColor) = layerProperties["circle-color"] else {
            return XCTFail("Layer property circle-color should be set to a string.")
        }
        XCTAssertEqual(circleColor, annotation.circleColor.flatMap { $0.rgbaString })
    }

    func testCircleOpacity() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleOpacity =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleOpacity) = layerProperties["circle-opacity"] else {
            return XCTFail("Layer property circle-opacity should be set to a number.")
        }
        XCTAssertEqual(circleOpacity, annotation.circleOpacity)
    }

    func testCircleRadius() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleRadius =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleRadius) = layerProperties["circle-radius"] else {
            return XCTFail("Layer property circle-radius should be set to a number.")
        }
        XCTAssertEqual(circleRadius, annotation.circleRadius)
    }

    func testCircleStrokeColor() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleStrokeColor =  StyleColor.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .string(circleStrokeColor) = layerProperties["circle-stroke-color"] else {
            return XCTFail("Layer property circle-stroke-color should be set to a string.")
        }
        XCTAssertEqual(circleStrokeColor, annotation.circleStrokeColor.flatMap { $0.rgbaString })
    }

    func testCircleStrokeOpacity() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleStrokeOpacity =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleStrokeOpacity) = layerProperties["circle-stroke-opacity"] else {
            return XCTFail("Layer property circle-stroke-opacity should be set to a number.")
        }
        XCTAssertEqual(circleStrokeOpacity, annotation.circleStrokeOpacity)
    }

    func testCircleStrokeWidth() {
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        annotation.circleStrokeWidth =  Double.testConstantValue()

        guard let featureProperties = try? XCTUnwrap(annotation.feature.properties) else {
            return
        }
        guard case let .object(layerProperties) = featureProperties["layerProperties"],
              case let .number(circleStrokeWidth) = layerProperties["circle-stroke-width"] else {
            return XCTFail("Layer property circle-stroke-width should be set to a number.")
        }
        XCTAssertEqual(circleStrokeWidth, annotation.circleStrokeWidth)
    }

    func testOffsetGeometry() {
        let mapInitOptions = MapInitOptions()
        let mapView = MapView(frame: UIScreen.main.bounds, mapInitOptions: mapInitOptions)
        var annotation = CircleAnnotation(point: .init(.init(latitude: 0, longitude: 0)))
        let point = CGPoint(x: annotation.point.coordinates.longitude, y: annotation.point.coordinates.latitude)

         // offsetGeometry return value is nil
         let offsetGeometryNilDistance = annotation.getOffsetGeometry(mapboxMap: mapView.mapboxMap, moveDistancesObject: nil)
         XCTAssertNil(offsetGeometryNilDistance)

         // offsetGeometry return value is not nil
         let moveObject = MoveDistancesObject()
         moveObject.currentX = CGFloat.random(in: 0...100)
         moveObject.currentY = CGFloat.random(in: 0...100)
         moveObject.prevX = point.x
         moveObject.prevY = point.y
         moveObject.distanceXSinceLast = moveObject.prevX - moveObject.currentX
         moveObject.distanceYSinceLast = moveObject.prevY - moveObject.currentY
         XCTAssertNotNil(moveObject)

         let offsetGeometry = annotation.getOffsetGeometry(mapboxMap: mapView.mapboxMap, moveDistancesObject: moveObject)
         XCTAssertNotNil(offsetGeometry)
     }
  }

// End of generated file
