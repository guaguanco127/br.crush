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
            85.0,
            104.0,
            1060.0,
            330.0
        ],
        "description": "br.crush.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "id": "obj-2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "Rate (Signal/Float) Hz 50. to 48000. Sample-rate reduction: how often a new sample is taken; in between, the last one is held. Lower = more aliasing and grit. 48000 or more = no rate reduction, at any samplerate. Default 8000",
                    "id": "obj-3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "Bits (Signal/Float) 1. to 24. Bit depth. A float: 4.5 is a blend of 4 and 5 bits, so turning it morphs smoothly instead of stepping. Default 6",
                    "id": "obj-4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "Auto-gain (Signal/Int) 0 off, 1 on: cuts 3 dB for every bit below 8, because each bit removed makes the crush sound louder. Going down the cut lands first, going up it lifts last, so the level never jumps. Default 1",
                    "id": "obj-5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "Low-pass (Signal/Float) Hz 200. to 20000. 12 dB/oct after the crush: smooths the stair-steps and tames the added highs. Default 20000",
                    "id": "obj-6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "Dry/Wet (Signal/Float) % 0. to 100. Linear blend. Default 100",
                    "id": "obj-7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "comment": "On/Off (Signal/Int) 1 on, 0 off. Off fades to the dry signal at full level. Fades over 20 ms. Default 1",
                    "id": "obj-8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
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
                    },
                    "patching_rect": [
                        15.0,
                        110.0,
                        555.0,
                        22.0
                    ],
                    "text": "gen~ @title br.crush.1.0"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-21",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-22",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        15.0,
                        399.0,
                        33.0
                    ],
                    "text": "br.crush.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "linecount": 11,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        640.0,
                        60.0,
                        380.0,
                        155.0
                    ],
                    "text": "br.crush: bit + sample-rate reduction, stereo. Rate holds each sample until the next one is taken (aliasing and grit); Bits rounds every sample to fewer levels (buzz and crunch). Bits is a float, so it morphs between depths. Every bit below 8 makes the crush sound louder, so Auto-gain cuts 3 dB per bit, landing before the crush gets louder and lifting after it gets quieter: the level never jumps. The Low-pass after the crush smooths it. Dry/Wet is linear, On/Off fades to dry. All DSP is in the gen~; every control fades, so nothing clicks. Defaults live in the gen~ (in N @default), so unconnected inlets need nothing."
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
}