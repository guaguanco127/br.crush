{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openrect": [
            85.0,
            104.0,
            132.0,
            169.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 132.0,
        "description": "br.crush.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-in2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Rate (Float) Hz 50. to 48000. 48000 = no rate reduction. Sets the dial. Default 8000",
                    "id": "obj-in3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Sample-rate reduction: how often a new sample is taken; the last one is held in between. Lower = more aliasing. All the way up = off. Default 8000 Hz",
                    "annotation_name": "Rate",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rate",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.5,
                        40.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 5.0,
                            "parameter_initial": [
                                8000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Rate",
                            "parameter_mmax": 48000.0,
                            "parameter_mmin": 50.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Rate",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Rate"
                }
            },
            {
                "box": {
                    "comment": "Bits (Float) 1. to 16. Sets the dial. Default 6",
                    "id": "obj-in4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Bit depth, a float: 4.5 blends 4 and 5 bits, so turning it morphs smoothly. Default 6",
                    "annotation_name": "Bits",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bits",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        68.0,
                        40.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                6.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Bits",
                            "parameter_mmax": 16.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bits",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "varname": "Bits"
                }
            },
            {
                "box": {
                    "comment": "Auto-gain (Int) 0 off, 1 on: 3 dB cut per bit below 8. Sets the button. Default 1",
                    "id": "obj-in5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-ag",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        85.0,
                        60.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        59.0,
                        7.0,
                        62.0,
                        20.0
                    ],
                    "text": "Auto-gain",
                    "texton": "Auto-gain",
                    "varname": "Auto-gain",
                    "annotation_name": "Auto-gain",
                    "annotation": "Cuts 3 dB for every bit below 8, so lowering Bits never jumps in level. Default on",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Auto-gain",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Auto-gain",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "comment": "Low-pass (Float) Hz 200. to 20000. Sets the dial. Default 20000",
                    "id": "obj-in6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "12 dB/oct low-pass after the crush: smooths the stair-steps and tames the added highs. Default 20000 Hz",
                    "annotation_name": "Low-pass",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lp",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        7.0,
                        104.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 4.0,
                            "parameter_initial": [
                                20000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Low-pass",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 200.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Low-pass",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Low-pass"
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Float) % 0. to 100. Sets the dial. Default 100",
                    "id": "obj-in7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Balance between the dry input and the crushed signal, linear. Default 100",
                    "annotation_name": "Dry/Wet",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-mix",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        85.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        68.0,
                        104.0,
                        44.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Dry/Wet",
                            "parameter_mmax": 100.0,
                            "parameter_mmin": 0.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dry/Wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Dry/Wet"
                }
            },
            {
                "box": {
                    "comment": "On/Off (Int) 1 on, 0 off: off fades to the dry signal. Sets the button. Default 1",
                    "id": "obj-in8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-onoff",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        85.0,
                        60.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        11.5,
                        7.0,
                        44.0,
                        20.0
                    ],
                    "text": "Off",
                    "texton": "On",
                    "varname": "On/Off",
                    "annotation_name": "On/Off",
                    "annotation": "Off fades to the dry signal at full level. Default on",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On/Off",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On/Off",
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        180.0,
                        555.0,
                        22.0
                    ],
                    "text": "br.crush.1.1"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-out1",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        230.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-out2",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        230.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        15.0,
                        440.0,
                        33.0
                    ],
                    "text": "br.crush.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        60.0,
                        420.0,
                        60.0
                    ],
                    "text": "Each inlet feeds its control, and each control feeds the core, so the screen always shows what you hear. Starting values are the controls' Initial Values: Rate 8000 Hz, Bits 6, Auto-gain on, Low-pass 20000, Dry/Wet 100, On."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        135.0,
                        420.0,
                        47.0
                    ],
                    "text": "[br.crush.1.1] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and drive any control with a signal."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t3",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        195.0,
                        420.0,
                        87.0
                    ],
                    "text": "Why Auto-gain: with fewer bits every level sits further from zero, so the quiet parts turn into a buzz that gets 6 dB louder with each bit removed, and the crush sounds louder even when the meter barely moves. A fixed 3 dB cut per bit below 8 evens it out by ear. The cut lands before the crush gets louder and lifts after it gets quieter, so turning Bits never jumps."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.crush.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.crush.ui.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        300.0,
                        160.0,
                        74.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        134.0,
                        169.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        135.0,
                        230.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): rate <Hz>, bits, autogain 0/1, lowpass <Hz>, drywet <%> and on 0/1, sent the moment a control changes. Numbers only (signals are not reported). Pick them out by name: [route rate bits autogain lowpass drywet on]"
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-2",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        640.0,
                        389.0,
                        420.0,
                        61.0
                    ],
                    "text": "The last outlet (State) reports the controls as rate <Hz>, bits, autogain 0/1, lowpass <Hz>, drywet <%> and on 0/1 the moment they change. It comes from the core, so moving a control, numbers into the inlets and preset recalls all show up. Pick them out by name with [route rate bits autogain lowpass drywet on].",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-in3",
                        0
                    ],
                    "destination": [
                        "obj-rate",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rate",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in4",
                        0
                    ],
                    "destination": [
                        "obj-bits",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-bits",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in5",
                        0
                    ],
                    "destination": [
                        "obj-ag",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-ag",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in6",
                        0
                    ],
                    "destination": [
                        "obj-lp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-lp",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in7",
                        0
                    ],
                    "destination": [
                        "obj-mix",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-mix",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in8",
                        0
                    ],
                    "destination": [
                        "obj-onoff",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-onoff",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in1",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-in2",
                        0
                    ],
                    "destination": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        0
                    ],
                    "destination": [
                        "obj-out1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        1
                    ],
                    "destination": [
                        "obj-out2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-core",
                        2
                    ],
                    "destination": [
                        "obj-1",
                        0
                    ]
                }
            }
        ]
    }
}