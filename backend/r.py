import tensorflow as tf
import tensorflowjs as tfjs

# tf.keras.applications.MobileNetV3Large(
#     input_shape=None,
#     alpha=1.0,
#     minimalistic=False,
#     include_top=True,
#     weights='imagenet',
#     input_tensor=None,
#     classes=1000,
#     pooling=None,
#     dropout_rate=0.2,
#     classifier_activation='softmax',
#     include_preprocessing=True
# )

model = tf.keras.applications.MobileNetV3Large(
    input_shape=(224, 224, 3), weights='imagenet', classifier_activation='softmax'
)

tfjs.converters.save_keras_model(model, "sample_data/tfjs_model_keras_MobileNetV3Large")