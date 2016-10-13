FROM nofish/zeronet
MAINTAINER David Parrish <daveparrish@tutanota.com>

RUN echo "Enabling optional plugins..." \
{{#PROJECT_PLUGIN_MULTIUSER}}
    && echo "Multiuser" \
    && mv /root/plugins/disabled-Multiuser /root/plugins/Multiuser \
{{/PROJECT_PLUGIN_MULTIUSER}}
{{#PROJECT_PLUGIN_UIPASSWORD}}
    && echo "UiPassword" \
    && mv /root/plugins/disabled-UiPassword /root/plugins/UiPassword \
{{/PROJECT_PLUGIN_UIPASSWORD}}
    && echo "Done enabling optional plugins."
