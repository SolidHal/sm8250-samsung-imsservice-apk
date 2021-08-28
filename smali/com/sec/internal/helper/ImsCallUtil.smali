.class public Lcom/sec/internal/helper/ImsCallUtil;
.super Ljava/lang/Object;
.source "ImsCallUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/helper/ImsCallUtil$NOTIFY_CALL_END_MODE;
    }
.end annotation


# static fields
.field public static final ECC_SERVICE_URN_DEFAULT:Ljava/lang/String; = "urn:service:sos"

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/helper/ImsCallUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCallEndReasonToFramework(II)I
    .locals 3
    .param p0, "endCallMode"    # I
    .param p1, "reason"    # I

    .line 103
    const/16 v0, 0xc8

    const/16 v1, 0xb

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    .line 104
    const/4 v2, 0x7

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    .line 112
    return v0

    .line 110
    :cond_0
    const/16 v0, 0x70a

    return v0

    .line 108
    :cond_1
    const/16 v0, 0x1e6

    return v0

    .line 106
    :cond_2
    const/16 v0, 0x454

    return v0

    .line 115
    :cond_3
    const/4 v2, 0x4

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_b

    const/16 v1, 0xc

    if-eq p1, v1, :cond_a

    const/16 v1, 0xe

    if-eq p1, v1, :cond_9

    const/16 v1, 0xf

    if-eq p1, v1, :cond_8

    const/16 v1, 0x14

    if-eq p1, v1, :cond_7

    const/16 v1, 0x15

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_4

    .line 135
    return v0

    .line 129
    :cond_4
    const/16 v0, 0x1778

    return v0

    .line 131
    :cond_5
    const/16 v0, 0x1779

    return v0

    .line 133
    :cond_6
    const/16 v0, 0x6a7

    return v0

    .line 127
    :cond_7
    const/16 v0, 0x1777

    return v0

    .line 123
    :cond_8
    const/16 v0, 0x6a5

    return v0

    .line 121
    :cond_9
    const/16 v0, 0x45b

    return v0

    .line 119
    :cond_a
    const/16 v0, 0x9c7

    return v0

    .line 125
    :cond_b
    const/16 v0, 0x4b1

    return v0

    .line 117
    :cond_c
    const/16 v0, 0x453

    return v0
.end method

.method public static convertCsCallStateToDialogState(I)I
    .locals 1
    .param p0, "callstate"    # I

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "dialogState":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 610
    :pswitch_0
    const/4 v0, 0x1

    .line 611
    goto :goto_0

    .line 606
    :pswitch_1
    const/4 v0, 0x2

    .line 607
    goto :goto_0

    .line 618
    :pswitch_2
    const/4 v0, 0x3

    .line 621
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDeregiReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 93
    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    .line 98
    const/16 v0, 0xe

    return v0

    .line 95
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static convertEccCatToUrn(I)Ljava/lang/String;
    .locals 1
    .param p0, "eccCat"    # I

    .line 420
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 421
    const-string/jumbo v0, "urn:service:sos.police"

    return-object v0

    .line 422
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 423
    const-string/jumbo v0, "urn:service:sos.ambulance"

    return-object v0

    .line 424
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 425
    const-string/jumbo v0, "urn:service:sos.fire"

    return-object v0

    .line 426
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 427
    const-string/jumbo v0, "urn:service:sos.marine"

    return-object v0

    .line 428
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 429
    const-string/jumbo v0, "urn:service:sos.mountain"

    return-object v0

    .line 430
    :cond_4
    const/16 v0, 0x14

    if-ne p0, v0, :cond_5

    .line 431
    const-string/jumbo v0, "urn:service:sos.traffic"

    return-object v0

    .line 432
    :cond_5
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_6

    .line 433
    const-string/jumbo v0, "urn:service:unspecified"

    return-object v0

    .line 435
    :cond_6
    const-string/jumbo v0, "urn:service:sos"

    return-object v0
.end method

.method public static convertEccCatToUrnSpecificKor(I)Ljava/lang/String;
    .locals 2
    .param p0, "eccCat"    # I

    .line 439
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 440
    const-string/jumbo v0, "urn:service:sos.police"

    return-object v0

    .line 441
    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 442
    const-string/jumbo v0, "urn:service:sos.fire"

    return-object v0

    .line 443
    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 444
    const-string/jumbo v0, "urn:service:sos.marine"

    return-object v0

    .line 445
    :cond_2
    const/16 v0, 0xfe

    if-ne p0, v0, :cond_3

    .line 446
    const-string/jumbo v0, "urn:service:unspecified"

    return-object v0

    .line 447
    :cond_3
    const/16 v0, 0x12

    if-ne p0, v0, :cond_4

    .line 448
    const-string/jumbo v0, "urn:service:sos.country-specific.kr.117"

    return-object v0

    .line 449
    :cond_4
    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    .line 450
    const-string/jumbo v0, "urn:service:sos.country-specific.kr.113"

    return-object v0

    .line 451
    :cond_5
    const/4 v0, 0x7

    const-string/jumbo v1, "urn:service:sos.country-specific.kr.111"

    if-ne p0, v0, :cond_6

    .line 452
    return-object v1

    .line 453
    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    .line 454
    return-object v1

    .line 455
    :cond_7
    const/16 v0, 0x13

    if-ne p0, v0, :cond_8

    .line 456
    const-string/jumbo v0, "urn:service:sos.country-specific.kr.118"

    return-object v0

    .line 457
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 458
    const-string/jumbo v0, "urn:service:sos.country-specific.kr.125"

    return-object v0

    .line 460
    :cond_9
    const-string/jumbo v0, "urn:service:sos"

    return-object v0
.end method

.method public static convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 3
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "dialogState":I
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 595
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 591
    :pswitch_1
    const/4 v0, 0x2

    .line 592
    goto :goto_0

    .line 580
    :pswitch_2
    const/4 v0, 0x1

    .line 581
    goto :goto_0

    .line 576
    :pswitch_3
    const/4 v0, 0x3

    .line 577
    nop

    .line 598
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 231
    const-string v0, "%23"

    .line 234
    .local v0, "ESC_SEQUENCE_POUND":Ljava/lang/String;
    const-string v1, "#"

    .line 236
    .local v1, "POUND":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    :cond_0
    return-object p0

    .line 243
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 1
    .param p0, "eccCatURN"    # Ljava/lang/String;

    .line 464
    const-string/jumbo v0, "urn:service:sos.police"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    const/4 v0, 0x1

    return v0

    .line 466
    :cond_0
    const-string/jumbo v0, "urn:service:sos.ambulance"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x2

    return v0

    .line 468
    :cond_1
    const-string/jumbo v0, "urn:service:sos.fire"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    const/4 v0, 0x4

    return v0

    .line 470
    :cond_2
    const-string/jumbo v0, "urn:service:sos.marine"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    const/16 v0, 0x8

    return v0

    .line 472
    :cond_3
    const-string/jumbo v0, "urn:service:sos.mountain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    const/16 v0, 0x10

    return v0

    .line 474
    :cond_4
    const-string/jumbo v0, "urn:service:sos.traffic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    const/16 v0, 0x14

    return v0

    .line 476
    :cond_5
    const-string/jumbo v0, "urn:service:sos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 477
    const/4 v0, 0x0

    return v0

    .line 479
    :cond_6
    const/16 v0, 0xfe

    return v0
.end method

.method public static getAudioCodec(Ljava/lang/String;)Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    .locals 2
    .param p0, "codec"    # Ljava/lang/String;

    .line 794
    const/4 v0, 0x0

    .line 795
    .local v0, "codecType":Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    if-nez p0, :cond_0

    .line 796
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 797
    :cond_0
    const-string v1, "AMR-WB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 799
    :cond_1
    const-string v1, "AMR-NB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 801
    :cond_2
    const-string v1, "EVS-FB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 802
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSFB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 803
    :cond_3
    const-string v1, "EVS-SWB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 805
    :cond_4
    const-string v1, "EVS-WB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 807
    :cond_5
    const-string v1, "EVS-NB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 808
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVSNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 809
    :cond_6
    const-string v1, "EVS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 810
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_EVS:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    goto :goto_0

    .line 812
    :cond_7
    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 814
    :goto_0
    return-object v0
.end method

.method public static getAudioMode(I)Ljava/lang/String;
    .locals 1
    .param p0, "direction"    # I

    .line 542
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 565
    const-string v0, "AUTO"

    .local v0, "mode":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "mode":Ljava/lang/String;
    :cond_0
    const-string v0, "DELAYED_MEDIA_CMC"

    .line 563
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0    # "mode":Ljava/lang/String;
    :cond_1
    const-string v0, "DELAYED_MEDIA"

    .line 560
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 556
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    const-string v0, "CMC_CS_RELAY"

    .line 557
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 553
    .end local v0    # "mode":Ljava/lang/String;
    :cond_3
    const-string v0, "CMC_AUTO"

    .line 554
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 550
    .end local v0    # "mode":Ljava/lang/String;
    :cond_4
    const-string v0, "STOP"

    .line 551
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 547
    .end local v0    # "mode":Ljava/lang/String;
    :cond_5
    const-string v0, "CPVE"

    .line 548
    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 544
    .end local v0    # "mode":Ljava/lang/String;
    :cond_6
    const-string v0, "SAE"

    .line 545
    .restart local v0    # "mode":Ljava/lang/String;
    nop

    .line 567
    :goto_0
    return-object v0
.end method

.method public static getCallTypeForRtt(IZ)I
    .locals 12
    .param p0, "currCallType"    # I
    .param p1, "mode"    # Z

    .line 496
    const/16 v0, 0x11

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/16 v5, 0x13

    const/4 v6, 0x5

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/16 v9, 0xf

    const/4 v10, 0x1

    const/16 v11, 0xe

    if-eqz p1, :cond_b

    .line 497
    if-ne p0, v10, :cond_0

    .line 498
    return v11

    .line 499
    :cond_0
    if-ne p0, v8, :cond_1

    .line 500
    return v9

    .line 501
    :cond_1
    if-ne p0, v6, :cond_2

    .line 502
    return v2

    .line 503
    :cond_2
    if-ne p0, v3, :cond_3

    .line 504
    return v0

    .line 505
    :cond_3
    if-ne p0, v4, :cond_4

    .line 506
    return v7

    .line 507
    :cond_4
    if-ne p0, v1, :cond_5

    .line 508
    return v5

    .line 509
    :cond_5
    if-ne p0, v7, :cond_6

    .line 510
    return v4

    .line 511
    :cond_6
    if-ne p0, v11, :cond_7

    .line 512
    return v10

    .line 513
    :cond_7
    if-ne p0, v9, :cond_8

    .line 514
    return v8

    .line 515
    :cond_8
    if-ne p0, v0, :cond_9

    .line 516
    return v3

    .line 517
    :cond_9
    if-ne p0, v2, :cond_a

    .line 518
    return v6

    .line 519
    :cond_a
    if-ne p0, v5, :cond_11

    .line 520
    return v1

    .line 523
    :cond_b
    if-ne p0, v11, :cond_c

    .line 524
    return v10

    .line 525
    :cond_c
    if-ne p0, v9, :cond_d

    .line 526
    return v8

    .line 527
    :cond_d
    if-ne p0, v7, :cond_e

    .line 528
    return v4

    .line 529
    :cond_e
    if-ne p0, v5, :cond_f

    .line 530
    return v1

    .line 531
    :cond_f
    if-ne p0, v2, :cond_10

    .line 532
    return v6

    .line 533
    :cond_10
    if-ne p0, v0, :cond_11

    .line 534
    return v3

    .line 537
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public static getConferenceUri(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 7
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 755
    const-string v0, ""

    .line 756
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, ""

    .line 758
    .local v1, "mnc":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 759
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v2

    .line 761
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 763
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getConferenceUri()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "confUri":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConferenceUri, confUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->GetConferenceUriMccmncType()I

    move-result v3

    .line 768
    .local v3, "confUriType":I
    const-string v4, "ims.mncXXX.mccXXX.3gppnetwork.org"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 769
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v1

    .line 772
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 774
    :cond_1
    const/4 v4, 0x2

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_3

    .line 775
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 778
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mncXXX"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mccXXX"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 780
    :cond_4
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p3, v4, :cond_8

    .line 781
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 782
    const-string v4, "313"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "100"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    const-string v4, "312"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "670"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 783
    :cond_6
    const-string/jumbo v2, "sip:n-way_voice@firstnet.com"

    goto :goto_1

    .line 786
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:n-way_voice@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATT confUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_8
    :goto_1
    return-object v2
.end method

.method public static getIdForString(Ljava/lang/String;)I
    .locals 2
    .param p0, "idString"    # Ljava/lang/String;

    .line 857
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 858
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public static getPEmergencyInfoOfAtt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "impi"    # Ljava/lang/String;

    .line 705
    const-string v1, "0000:0000:0000:0000"

    .line 706
    .local v1, "e911Aid":Ljava/lang/String;
    const-string v2, "IEEE-802.11;i-wlan-node-id="

    .line 707
    .local v2, "e911AidPrefix":Ljava/lang/String;
    const-string v0, ""

    .line 708
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v3

    .line 709
    .local v3, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 710
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v4

    iget-object v0, v4, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 713
    :cond_0
    move-object v4, v0

    .end local v0    # "countryCode":Ljava/lang/String;
    .local v4, "countryCode":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUriByImpi(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 715
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 716
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_2

    .line 717
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 718
    const-string v0, "E911AID"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 719
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current address e911aid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 715
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v6

    .line 722
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 724
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    const-string v0, "0000000000000000"

    move-object v1, v0

    .line 728
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_4
    goto/16 :goto_5

    .line 729
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 730
    const-string v11, "is_native = ?"

    .line 731
    .local v11, "selection":Ljava/lang/String;
    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    .line 732
    .local v9, "selectionArgs":[Ljava/lang/String;
    const-string v12, "_id"

    const-string v13, "msisdn"

    const-string v14, "location_status"

    const-string/jumbo v15, "tc_status"

    const-string v16, "e911_address_id"

    const-string v17, "e911_aid_expiration"

    const-string v18, "e911_server_data"

    const-string v19, "e911_server_url"

    const-string/jumbo v20, "type"

    filled-new-array/range {v12 .. v20}, [Ljava/lang/String;

    move-result-object v7

    .line 736
    .local v7, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    move-object v8, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 738
    .restart local v5    # "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_7

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 739
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "temp":Ljava/lang/String;
    sget-object v6, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "temp e911Aid = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 742
    move-object v1, v0

    .line 744
    :cond_6
    sget-object v6, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "final e911Aid = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    nop

    .end local v0    # "temp":Ljava/lang/String;
    goto :goto_3

    .line 746
    :cond_7
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v6, "invalid cursor"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 748
    :goto_3
    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 736
    :catchall_2
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_8

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw v6

    .line 751
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v7    # "projection":[Ljava/lang/String;
    .end local v9    # "selectionArgs":[Ljava/lang/String;
    .end local v11    # "selection":Ljava/lang/String;
    :cond_9
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteCallerId(Lcom/sec/ims/util/NameAddr;Lcom/sec/internal/constants/Mno;Z)Ljava/lang/String;
    .locals 4
    .param p0, "addr"    # Lcom/sec/ims/util/NameAddr;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "hidePrivateInfo"    # Z

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "callerId":Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 276
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 277
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz p1, :cond_2

    .line 278
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    if-eqz v1, :cond_2

    .line 283
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_2

    .line 284
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 290
    if-eqz v1, :cond_4

    .line 291
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_3

    .line 293
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRemoteCallerId: dialing number for Urn from display name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 296
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 297
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELKOM_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_4

    .line 298
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_4

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getPhoneContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_4
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 308
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getRemoteCallerId: indefinite."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v0, "anonymous"

    .line 312
    :cond_5
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->convertSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 656
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCSFBbySIPErrorCode(I)Z
    .locals 3
    .param p0, "errorCode"    # I

    .line 316
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCSFBbySIPErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sparse-switch p0, :sswitch_data_0

    .line 337
    const/4 v0, 0x0

    return v0

    .line 335
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x190 -> :sswitch_0
        0x193 -> :sswitch_0
        0x194 -> :sswitch_0
        0x195 -> :sswitch_0
        0x196 -> :sswitch_0
        0x198 -> :sswitch_0
        0x19f -> :sswitch_0
        0x1e0 -> :sswitch_0
        0x1e4 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x25b -> :sswitch_0
        0x25c -> :sswitch_0
        0x25e -> :sswitch_0
        0x458 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isCameraUsingCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 190
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 629
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 634
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isE911Call(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 342
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 348
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isEmergencyAudioCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 179
    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmergencyVideoCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 185
    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 646
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 651
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isImsForbiddenError(Lcom/sec/ims/util/SipError;)Z
    .locals 3
    .param p0, "error"    # Lcom/sec/ims/util/SipError;

    .line 151
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Forbidden"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registered"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 154
    :goto_0
    return v0
.end method

.method public static isImsOutageError(Lcom/sec/ims/util/SipError;)Z
    .locals 3
    .param p0, "error"    # Lcom/sec/ims/util/SipError;

    .line 141
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    return v0

    .line 144
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorVzw;->IMS_OUTAGE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Outage"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 144
    :goto_0
    return v0
.end method

.method public static isMultiPdnRat(I)Z
    .locals 2
    .param p0, "rat"    # I

    .line 484
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 489
    :cond_1
    :goto_0
    return v0
.end method

.method public static isOneWayVideoCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 398
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isOngoingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z
    .locals 1
    .param p0, "callstate"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 625
    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRttCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 206
    packed-switch p0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isRttEmergencyCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 220
    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    .line 225
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSamsungFmcConnected()Z
    .locals 5

    .line 406
    const-string v0, "isSamsungFmcConnected - "

    const/4 v1, 0x0

    .line 408
    .local v1, "ret":Z
    :try_start_0
    const-string/jumbo v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 409
    .local v2, "voipCall":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 410
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    move v1, v3

    .line 412
    :cond_0
    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    nop

    .end local v2    # "voipCall":Landroid/os/IVoIPInterface;
    goto :goto_0

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static isSrvccAvailable(ILcom/sec/internal/constants/Mno;ZLcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Z
    .locals 4
    .param p0, "srvccVersion"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p2, "isEpdgCall"    # Z
    .param p3, "CallState"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .param p4, "isConferenceCall"    # Z

    .line 677
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 678
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SRVCC during EPDG connected, ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return v0

    .line 682
    :cond_0
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SRVCC ver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    if-nez p0, :cond_1

    .line 684
    return v0

    .line 687
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 691
    :cond_2
    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/16 v1, 0x9

    if-ne p0, v1, :cond_3

    goto :goto_0

    .line 695
    :cond_3
    const/16 v1, 0xa

    if-ne p0, v1, :cond_5

    .line 696
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p3, v1, :cond_4

    move v0, v2

    :cond_4
    return v0

    .line 697
    :cond_5
    goto :goto_1

    .line 692
    :cond_6
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p3, v1, :cond_8

    if-eqz p4, :cond_7

    goto :goto_2

    .line 701
    :cond_7
    :goto_1
    return v2

    .line 693
    :cond_8
    :goto_2
    return v0

    .line 688
    :cond_9
    :goto_3
    return v2
.end method

.method public static isTPhoneRelaxMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .line 661
    const-string v0, "content://com.skt.prod.dialer.sktincallscreen.provider"

    .line 662
    .local v0, "AUTHORITY_TPHONE":Ljava/lang/String;
    const-string v1, "get_relaxation"

    .line 663
    .local v1, "PATH_GET_RELAXTION":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 664
    .local v2, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 666
    .local v9, "result":I
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v7, v11

    .line 667
    .local v7, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 668
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 669
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v4

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v4

    .line 671
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 673
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-ne v9, v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v11

    :goto_2
    return v10
.end method

.method public static isTimerVzwExpiredError(Lcom/sec/ims/util/SipError;)Z
    .locals 2
    .param p0, "error"    # Lcom/sec/ims/util/SipError;

    .line 162
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x9c5

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTtyCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 195
    packed-switch p0, :pswitch_data_0

    .line 201
    const/4 v0, 0x0

    return v0

    .line 199
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUpgradeCall(II)Z
    .locals 6
    .param p0, "oldCallType"    # I
    .param p1, "newCallType"    # I

    .line 355
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, v3, :cond_a

    const/16 v5, 0x9

    if-eq p0, v5, :cond_a

    const/16 v5, 0xa

    if-eq p0, v5, :cond_a

    const/16 v5, 0xb

    if-ne p0, v5, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    if-ne p0, v2, :cond_1

    .line 367
    return v4

    .line 368
    :cond_1
    if-ne p0, v1, :cond_3

    .line 369
    if-ne p1, v2, :cond_2

    .line 370
    return v3

    .line 373
    :cond_2
    return v4

    .line 374
    :cond_3
    if-ne p0, v0, :cond_5

    .line 375
    if-ne p1, v2, :cond_4

    .line 376
    return v3

    .line 379
    :cond_4
    return v4

    .line 380
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 381
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    .line 382
    return v3

    .line 385
    :cond_6
    return v4

    .line 386
    :cond_7
    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    .line 387
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 388
    return v3

    .line 391
    :cond_8
    return v4

    .line 394
    :cond_9
    return v4

    .line 359
    :cond_a
    :goto_0
    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_c

    if-ne p1, v0, :cond_b

    goto :goto_1

    .line 365
    :cond_b
    return v4

    .line 362
    :cond_c
    :goto_1
    return v3
.end method

.method public static isVideoCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 166
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 174
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static onConvertSipErrorReason(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)Lcom/sec/ims/util/SipError;
    .locals 7
    .param p0, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    .line 818
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 825
    .local v0, "error":Lcom/sec/ims/util/SipError;
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 826
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceType()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceReason()Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeServiceUrn()Ljava/lang/String;

    move-result-object v3

    .line 830
    .local v3, "serviceUrn":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", serviceUrn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "emergency"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 833
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "serviceUrn is Empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v4, v5, :cond_0

    .line 837
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    .line 838
    const-string/jumbo v4, "urn:service:sos"

    invoke-virtual {v0, v4}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_0
    sget-object v4, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string v5, "action is Empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->EMERGENCY:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    if-ne v4, v5, :cond_2

    .line 844
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY_CSFB:Lcom/sec/ims/util/SipError;

    .line 845
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE_EMERGENCY:Lcom/sec/ims/util/SipError;

    .line 848
    invoke-virtual {v0, v3}, Lcom/sec/ims/util/SipError;->setReason(Ljava/lang/String;)V

    .line 852
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "reason":Ljava/lang/String;
    .end local v3    # "serviceUrn":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;
    .param p3, "hidePrivateInfo"    # Z

    .line 260
    move-object v0, p0

    .line 261
    .local v0, "trimUri":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    if-eqz p3, :cond_1

    .line 265
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_1
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUriPlusPrefix : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-object v0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "hidePrivateInfo"    # Z

    .line 247
    move-object v0, p0

    .line 248
    .local v0, "trimUri":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v1, "+1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    .line 252
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeUriPlusPrefix : [ xxxxxxxxxxx ] -> : [ xxxxxxxxxxx ]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_1
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUriPlusPrefix : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] -> : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-object v0
.end method

.method public static validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phonenumber"    # Ljava/lang/String;
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validatePhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, ""

    .line 50
    .local v0, "validPhoneNumber":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 52
    .local v1, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 53
    .local v2, "msisdnPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 68
    .end local v1    # "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .end local v2    # "msisdnPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v2, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberParseException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    goto :goto_0

    .line 70
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    sget-object v1, Lcom/sec/internal/helper/ImsCallUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validatePhoneNumber: phonenumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    return-object v0
.end method
