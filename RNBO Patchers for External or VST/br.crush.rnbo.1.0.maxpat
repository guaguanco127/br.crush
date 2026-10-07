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
        "rect": [
            134.0,
            159.0,
            780.0,
            680.0
        ],
        "description": "br.crush.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        218.0,
                        40.0,
                        520.0,
                        33.0
                    ],
                    "text": "br.crush.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.0,
                        40.0,
                        150.0,
                        39.0
                    ],
                    "text": "Drop sample into here"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        38.0,
                        98.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        600.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        450.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-7",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left-Signal-In"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right-Signal-In"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Rate (Float) Hz 50. to 48000. Sample-rate reduction: how often a new sample is taken; in between, the last one is held. Lower = more aliasing and grit. 48000 or more = no rate reduction, at any samplerate. Default 8000"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Bits (Float) 1. to 24. Bit depth. A float: 4.5 is a blend of 4 and 5 bits, so turning it morphs smoothly instead of stepping. Default 6"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Auto-gain (Int) 0 off, 1 on: cuts 3 dB for every bit below 8, because each bit removed makes the crush sound louder. Going down the cut lands first, going up it lifts last, so the level never jumps. Default 1"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Low-pass (Float) Hz 200. to 20000. 12 dB/oct after the crush: smooths the stair-steps and tames the added highs. Default 20000"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Dry/Wet (Float) % 0. to 100. Linear blend. Default 100"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "On/Off (Int) 1 on, 0 off. Off fades to the dry signal at full level. Fades over 20 ms. Default 1"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 3,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            100.0,
                            100.0,
                            1150.0,
                            420.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        27.0,
                                        171.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 1",
                                                "displayName": "Left-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 1 @comment Left-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        234.0,
                                        27.0,
                                        178.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 2",
                                                "displayName": "Right-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 2 @comment Right-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                134.0,
                                                87.0,
                                                1300.0,
                                                884.0
                                            ],
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-1",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            29.0,
                                                            20.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 1 @comment \"Left In (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-2",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            91.0,
                                                            130.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 2 @comment \"Right In (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-3",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            153.0,
                                                            240.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 3 @comment \"Rate (Signal/Float) Hz 50 to 48000, 48000 = off -- default 8000\" @default 8000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-4",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            215.0,
                                                            350.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 4 @comment \"Bits (Signal/Float) 1 to 24 -- default 6\" @default 6"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-5",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            277.0,
                                                            20.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 5 @comment \"Auto-gain (Signal/Int) 0 off 1 on -- default 1\" @default 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-6",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            339.0,
                                                            130.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 6 @comment \"Low-pass (Signal/Float) Hz 200 to 20000 -- default 20000\" @default 20000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-7",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            401.0,
                                                            240.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 7 @comment \"Dry/Wet (Signal/Float) % 0 to 100 -- default 100\" @default 100"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-8",
                                                        "linecount": 6,
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            463.0,
                                                            350.0,
                                                            100.0,
                                                            89.0
                                                        ],
                                                        "text": "in 8 @comment \"On/Off (Signal/Int) 1 on 0 off -- default 1\" @default 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "code": "// br.crush 1.0 -- bit + sample-rate reduction. Brian Riordan, https://github.com/guaguanco127/\n// chain: sample-rate reduce -> bit crush -> auto-gain dip -> low-pass -> dry/wet -> on/off\n// in1 L, in2 R, in3 Rate Hz, in4 Bits, in5 Auto-gain 0/1, in6 Low-pass Hz, in7 Dry/Wet %, in8 On/Off 0/1\nHistory ph(0);\nHistory hL(0);\nHistory hR(0);\nHistory sRate(48000);\nHistory sBits(16);\nHistory sLp(20000);\nHistory sAg(0);\nHistory sMix(1);\nHistory sOn(1);\nHistory sDb(0);\nHistory a1L(0);\nHistory a2L(0);\nHistory a1R(0);\nHistory a2R(0);\nHistory dxL(0);\nHistory dyL(0);\nHistory dxR(0);\nHistory dyR(0);\n\nsr = samplerate;\nkc = 1 - exp(-1 / (0.02 * sr));\nkdn = 1 - exp(-1 / (0.005 * sr));\nkup = 1 - exp(-1 / (0.04 * sr));\nrdc = exp(-2 * pi * 5 / sr);\n\n// 20 ms smoothing on every control. Rate 48000 or more = no rate reduction at any samplerate\ntRate = in3 >= 48000 ? sr : clamp(in3, 20, sr);\ntBits = clamp(in4, 1, 24);\nrate = sRate + (tRate - sRate) * kc;\nbits = sBits + (tBits - sBits) * kc;\nlpf = sLp + (clamp(in6, 20, sr * 0.45) - sLp) * kc;\nag = sAg + ((in5 > 0.5) - sAg) * kc;\nwet = sMix + (clamp(in7, 0, 100) * 0.01 - sMix) * kc;\non = sOn + ((in8 > 0.5) - sOn) * kc;\n\n// 1) sample-rate reduction: take a new sample each time the phase wraps, hold it otherwise\np = ph + rate / sr;\nxl = hL;\nxr = hR;\nif (p >= 1) {\n\tp = p - floor(p);\n\txl = in1;\n\txr = in2;\n}\n\n// 2) bit crush. levels sit half a step off 0, so quiet input buzzes instead of cutting out.\n// rounded on the size, sign put back: exact silence stays 0, so no DC offset; top level stays inside +-1\n// Bits is a float: 4.5 blends the 4 and 5 bit results, so turning Bits morphs instead of stepping\nb0 = floor(bits);\nfr = bits - b0;\nn0 = pow(2, b0 - 1);\nn1 = n0 * 2;\ncl = clamp(xl, -1, 1);\ncr = clamp(xr, -1, 1);\nal = abs(cl);\nar = abs(cr);\nyl = sign(cl) * mix((min(floor(al * n0), n0 - 1) + 0.5) / n0, (min(floor(al * n1), n1 - 1) + 0.5) / n1, fr);\nyr = sign(cr) * mix((min(floor(ar * n0), n0 - 1) + 0.5) / n0, (min(floor(ar * n1), n1 - 1) + 0.5) / n1, fr);\n\n// 3) auto-gain: 3 dB cut for every bit below 8, because each bit removed makes the crush sound louder.\n// the dip leads the crush: computed from the LOWER of target and smoothed Bits, cut in 5 ms while Bits\n// glides in 20 ms, released over 40 ms -- going down the level drops first, going up it returns last\ndbt = 3 * max(0, 8 - min(tBits, bits));\ndbs = sDb + (dbt - sDb) * (dbt > sDb ? kdn : kup);\ndg = mix(1, dbtoa(-dbs), ag);\nyl = yl * dg;\nyr = yr * dg;\n\n// 4) low-pass, 12 dB/oct state-variable, Q 0.707: smooths the held stair-steps and the added highs\nw = tan(pi * lpf / sr);\nc1 = 1 / (1 + w * (w + 1.41421356));\nc2 = w * c1;\nc3 = w * c2;\nvL = yl - a2L;\nv1L = c1 * a1L + c2 * vL;\nv2L = a2L + c2 * a1L + c3 * vL;\nvR = yr - a2R;\nv1R = c1 * a1R + c2 * vR;\nv2R = a2R + c2 * a1R + c3 * vR;\n\n// 5) DC blocker on the wet path only, 5 Hz one-pole: a constant offset coming in from upstream would be\n// rounded up to a half step and come out as DC. The dry signal is left untouched\nwL = v2L - dxL + rdc * dyL;\nwR = v2R - dxR + rdc * dyR;\n\n// 6) dry/wet, linear: dry and crushed are nearly the same waveform, so equal power would bump the middle 3 dB.\n// off fades to the dry signal; the crusher keeps running underneath\nm = wet * on;\nout1 = mix(in1, wL, m);\nout2 = mix(in2, wR, m);\n\n// write state last\nph = p;\nhL = xl;\nhR = xr;\nsRate = rate;\nsBits = bits;\nsLp = lpf;\nsAg = ag;\nsMix = wet;\nsOn = on;\nsDb = dbs;\na1L = 2 * v1L - a1L;\na2L = 2 * v2L - a2L;\na1R = 2 * v1R - a1R;\na2R = 2 * v2R - a2R;\ndxL = v2L;\ndyL = wL;\ndxR = v2R;\ndyR = wR;\n",
                                                        "fontface": 0,
                                                        "fontname": "<Monospaced>",
                                                        "fontsize": 12.0,
                                                        "id": "obj-20",
                                                        "maxclass": "codebox",
                                                        "numinlets": 8,
                                                        "numoutlets": 2,
                                                        "outlettype": [
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            29.0,
                                                            556.0,
                                                            760.0,
                                                            1250.0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-21",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            29.0,
                                                            1830.0,
                                                            200.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment \"Left Out (Signal)\""
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-22",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            770.0,
                                                            1830.0,
                                                            207.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment \"Right Out (Signal)\""
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-1",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-2",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            1
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-3",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            2
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-4",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            3
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            4
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-6",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            5
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-7",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            6
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-8",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-20",
                                                            7
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-20",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-21",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-20",
                                                            1
                                                        ],
                                                        "destination": [
                                                            "obj-22",
                                                            0
                                                        ]
                                                    }
                                                }
                                            ]
                                        }
                                    },
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 8,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        140.0,
                                        760.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.crush",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all param and history objects to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "a gen expression",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [
                                                    "t"
                                                ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "t": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 1,
                                                "aliasOf": "title",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "exposeparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose gen params as RNBO params.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "auto",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in3",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in4",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in5",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in6",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in7",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in8",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in9",
                                                "type": "auto"
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal"
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal"
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": 179904306,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @title br.crush",
                                    "varname": "br.delay.digital"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 2",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-5",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        270.0,
                                        560.0,
                                        47.0
                                    ],
                                    "text": "gen~ code MUST MATCH br.crush.1.0 (open both: same codebox). The six params are the plugin parameters (VST/AU, web, external). Each inlet sets its param; attrui in the parent shows them all."
                                }
                            },
                            {
                                "box": {
                                    "id": "rin3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 3 @comment \"Rate (Float) Hz 50. to 48000. Sample-rate reduction: how often a new sample is taken; in between, the last one is held. Lower = more aliasing and grit. 48000 or more = no rate reduction, at any samplerate. Default 8000\"",
                                    "patching_rect": [
                                        450.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin3"
                                }
                            },
                            {
                                "box": {
                                    "id": "pRate",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Rate 8000 @min 50. @max 48000. @exponent 5. @order 1",
                                    "patching_rect": [
                                        450.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Rate"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 4 @comment \"Bits (Float) 1. to 24. Bit depth. A float: 4.5 is a blend of 4 and 5 bits, so turning it morphs smoothly instead of stepping. Default 6\"",
                                    "patching_rect": [
                                        560.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin4"
                                }
                            },
                            {
                                "box": {
                                    "id": "pBits",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Bits 6 @min 1. @max 16. @order 2",
                                    "patching_rect": [
                                        560.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Bits"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 5 @comment \"Auto-gain (Int) 0 off, 1 on: cuts 3 dB for every bit below 8, because each bit removed makes the crush sound louder. Going down the cut lands first, going up it lifts last, so the level never jumps. Default 1\"",
                                    "patching_rect": [
                                        670.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin5"
                                }
                            },
                            {
                                "box": {
                                    "id": "pAuto_gain",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Auto_gain 1 @min 0 @max 1 @enum Off On @order 3",
                                    "patching_rect": [
                                        670.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Auto_gain"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 6 @comment \"Low-pass (Float) Hz 200. to 20000. 12 dB/oct after the crush: smooths the stair-steps and tames the added highs. Default 20000\"",
                                    "patching_rect": [
                                        780.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin6"
                                }
                            },
                            {
                                "box": {
                                    "id": "pLow_pass",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Low_pass 20000 @min 200. @max 20000. @exponent 4. @order 4",
                                    "patching_rect": [
                                        780.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Low_pass"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 7 @comment \"Dry/Wet (Float) % 0. to 100. Linear blend. Default 100\"",
                                    "patching_rect": [
                                        890.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin7"
                                }
                            },
                            {
                                "box": {
                                    "id": "pDry_Wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Dry_Wet 100 @min 0. @max 100. @order 5",
                                    "patching_rect": [
                                        890.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Dry_Wet"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 8 @comment \"On/Off (Int) 1 on, 0 off. Off fades to the dry signal at full level. Fades over 20 ms. Default 1\"",
                                    "patching_rect": [
                                        1000.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin8"
                                }
                            },
                            {
                                "box": {
                                    "id": "pOn_Off",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param On_Off 1 @min 0 @max 1 @enum Off On @order 6",
                                    "patching_rect": [
                                        1000.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "On_Off"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        1
                                    ],
                                    "destination": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin3",
                                        0
                                    ],
                                    "destination": [
                                        "pRate",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pRate",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin4",
                                        0
                                    ],
                                    "destination": [
                                        "pBits",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pBits",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin5",
                                        0
                                    ],
                                    "destination": [
                                        "pAuto_gain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pAuto_gain",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin6",
                                        0
                                    ],
                                    "destination": [
                                        "pLow_pass",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pLow_pass",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin7",
                                        0
                                    ],
                                    "destination": [
                                        "pDry_Wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDry_Wet",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin8",
                                        0
                                    ],
                                    "destination": [
                                        "pOn_Off",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pOn_Off",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        7
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        54.0,
                        400.0,
                        340.0,
                        22.0
                    ],
                    "rnboattrcache": {
                        "Rate": {
                            "label": "Rate",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Bits": {
                            "label": "Bits",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Auto_gain": {
                            "label": "Auto_gain",
                            "isEnum": 1,
                            "parsestring": "\"Off\" \"On\""
                        },
                        "Low_pass": {
                            "label": "Low_pass",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Dry_Wet": {
                            "label": "Dry_Wet",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "On_Off": {
                            "label": "On_Off",
                            "isEnum": 1,
                            "parsestring": "\"Off\" \"On\""
                        }
                    },
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "e3ac30ad-9bbf-4a17-9f60-51a4397c763c"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        420.0,
                        400.0,
                        340.0,
                        100.0
                    ],
                    "text": "EXPORT NAME: br.crush.1.0~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction br.crush.1.0, and Max loads whichever it finds first. Audio Plugin Export (VST3/AU): any name; the Rate, Bits, Auto_gain, Low_pass, Dry_Wet and On_Off params appear in your DAW."
                }
            },
            {
                "box": {
                    "attr": "Rate",
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        90.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Bits",
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        114.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Auto_gain",
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        138.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Low_pass",
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        162.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Dry_Wet",
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        186.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "On_Off",
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        210.0,
                        180.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-5",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        1
                    ],
                    "source": [
                        "obj-7",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        0
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        1
                    ],
                    "source": [
                        "obj-9",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-5": [
                "Out",
                "Out",
                0
            ],
            "obj-7": [
                "rnbo~",
                "rnbo~",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}