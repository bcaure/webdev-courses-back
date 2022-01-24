# Common functions
def validate_payload(request, expected_attributes):
    payload = request.get_json(force=True, silent=True)
    validation_errors = []
    if payload == None:
        validation_errors.append("You sent an invalid JSON object")
    else:
      for expected_attribute in expected_attributes:
          if expected_attribute not in payload:
              validation_errors.append(f"You forgot to provide the '{expected_attribute}' attribute.")
      for received_attribute in payload:
          if received_attribute not in expected_attributes:
              validation_errors.append(f"You provided the '{received_attribute}' attribute, which is not expected.")
    return validation_errors
