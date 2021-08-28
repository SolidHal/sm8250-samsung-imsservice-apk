.class public Lcom/sec/internal/google/DataTypeConvertor;
.super Ljava/lang/Object;
.source "DataTypeConvertor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "eccCatStr"    # Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 62
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 63
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "urn:service:sos"

    if-eqz v2, :cond_0

    .line 64
    return-object v3

    .line 67
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "eccCat":I
    const/16 v4, 0xfe

    if-ne v2, v4, :cond_1

    .line 69
    const-string/jumbo v3, "urn:service:unspecified"

    return-object v3

    .line 70
    :cond_1
    const/16 v4, 0x10

    if-ne v2, v4, :cond_2

    .line 71
    const-string/jumbo v3, "urn:service:sos.mountain"

    return-object v3

    .line 72
    :cond_2
    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    .line 73
    const-string/jumbo v3, "urn:service:sos.marine"

    return-object v3

    .line 74
    :cond_3
    const/4 v4, 0x4

    const-string/jumbo v5, "urn:service:sos.fire"

    if-ne v2, v4, :cond_4

    .line 75
    return-object v5

    .line 76
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 77
    const-string/jumbo v3, "urn:service:sos.ambulance"

    return-object v3

    .line 78
    :cond_5
    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 79
    const-string/jumbo v3, "urn:service:sos.police"

    return-object v3

    .line 80
    :cond_6
    const/16 v4, 0x14

    if-ne v2, v4, :cond_7

    .line 81
    const-string/jumbo v3, "urn:service:sos.traffic"

    return-object v3

    .line 83
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    const/4 v4, 0x6

    if-ne v2, v4, :cond_8

    .line 87
    return-object v5

    .line 90
    :cond_8
    return-object v3
.end method

.method public static convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "eccCatStr"    # Ljava/lang/String;

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "urn:service:sos"

    if-eqz v0, :cond_0

    .line 96
    return-object v1

    .line 99
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, "eccCat":I
    const/16 v2, 0xfe

    if-ne v0, v2, :cond_1

    .line 101
    const-string/jumbo v1, "urn:service:unspecified"

    return-object v1

    .line 102
    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 103
    const-string/jumbo v1, "urn:service:sos.marine"

    return-object v1

    .line 104
    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 105
    const-string/jumbo v1, "urn:service:sos.fire"

    return-object v1

    .line 106
    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 107
    const-string/jumbo v1, "urn:service:sos.police"

    return-object v1

    .line 108
    :cond_4
    const/4 v2, 0x6

    const-string/jumbo v3, "urn:service:sos.country-specific.kr.111"

    if-ne v0, v2, :cond_5

    .line 109
    return-object v3

    .line 110
    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    .line 111
    return-object v3

    .line 112
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 113
    const-string/jumbo v1, "urn:service:sos.country-specific.kr.113"

    return-object v1

    .line 114
    :cond_7
    const/16 v2, 0x12

    if-ne v0, v2, :cond_8

    .line 115
    const-string/jumbo v1, "urn:service:sos.country-specific.kr.117"

    return-object v1

    .line 116
    :cond_8
    const/16 v2, 0x13

    if-ne v0, v2, :cond_9

    .line 117
    const-string/jumbo v1, "urn:service:sos.country-specific.kr.118"

    return-object v1

    .line 118
    :cond_9
    const/16 v2, 0x9

    if-ne v0, v2, :cond_a

    .line 119
    const-string/jumbo v1, "urn:service:sos.country-specific.kr.125"

    return-object v1

    .line 121
    :cond_a
    return-object v1
.end method

.method public static convertToClirPrefix(I)Ljava/lang/String;
    .locals 2
    .param p0, "clirMode"    # I

    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "clir":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    const-string/jumbo v0, "unknown"

    .line 137
    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "*31#"

    .line 134
    goto :goto_0

    .line 130
    :cond_2
    const-string v0, "#31#"

    .line 131
    nop

    .line 142
    :goto_0
    return-object v0
.end method

.method public static convertToGoogleCallType(I)I
    .locals 1
    .param p0, "type"    # I

    .line 204
    const/4 v0, 0x2

    .line 206
    .local v0, "googleCallType":I
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 220
    :pswitch_1
    const/4 v0, 0x6

    .line 221
    goto :goto_0

    .line 217
    :pswitch_2
    const/4 v0, 0x5

    .line 218
    goto :goto_0

    .line 214
    :pswitch_3
    const/4 v0, 0x4

    .line 215
    goto :goto_0

    .line 209
    :pswitch_4
    const/4 v0, 0x2

    .line 210
    nop

    .line 225
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;
    .locals 4
    .param p0, "errorCode"    # I

    .line 25
    const/16 v0, 0x3e8

    .line 26
    .local v0, "code":I
    const/4 v1, 0x1

    .line 27
    .local v1, "extraCode":I
    const-string v2, ""

    .line 30
    .local v2, "extraMessage":Ljava/lang/String;
    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 31
    .local v3, "reason":Landroid/telephony/ims/ImsReasonInfo;
    return-object v3
.end method

.method public static convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 5
    .param p0, "profile"    # Lcom/sec/ims/volte2/data/MediaProfile;

    .line 281
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 283
    .local v0, "convertedProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    const/4 v1, 0x0

    .line 285
    .local v1, "videoQuality":I
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 294
    const/4 v1, 0x2

    goto :goto_0

    .line 296
    :cond_1
    const/4 v1, 0x4

    .line 298
    goto :goto_0

    .line 290
    :cond_2
    const/4 v1, 0x1

    .line 291
    goto :goto_0

    .line 300
    :cond_3
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoOrientation()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 301
    const/16 v1, 0x8

    goto :goto_0

    .line 303
    :cond_4
    const/16 v1, 0x10

    .line 305
    goto :goto_0

    .line 287
    :cond_5
    const/4 v1, 0x0

    .line 288
    nop

    .line 310
    :goto_0
    const/4 v2, 0x1

    .line 312
    .local v2, "audioQuality":I
    sget-object v3, Lcom/sec/internal/google/DataTypeConvertor$1;->$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType:[I

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 331
    :pswitch_0
    const/16 v2, 0x14

    .line 332
    goto :goto_1

    .line 328
    :pswitch_1
    const/16 v2, 0x13

    .line 329
    goto :goto_1

    .line 325
    :pswitch_2
    const/16 v2, 0x12

    .line 326
    goto :goto_1

    .line 322
    :pswitch_3
    const/16 v2, 0x11

    .line 323
    goto :goto_1

    .line 318
    :pswitch_4
    const/4 v2, 0x2

    .line 319
    goto :goto_1

    .line 315
    :pswitch_5
    const/4 v2, 0x1

    .line 316
    nop

    .line 337
    :goto_1
    iput v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 338
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 339
    const/4 v3, 0x3

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 340
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 341
    const/4 v3, 0x0

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_2

    .line 343
    :cond_6
    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 345
    :goto_2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v3

    iput v3, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 347
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 12
    .param p0, "phoneId"    # I
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "isTtyMode"    # Z

    .line 351
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 352
    .local v0, "convertedProfile":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v0, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    .line 353
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 354
    .local v1, "oemExtras":Landroid/os/Bundle;
    const-string v2, ""

    .line 355
    .local v2, "eccCatStr":Ljava/lang/String;
    const-string v3, ""

    .line 356
    .local v3, "letteringText":Ljava/lang/String;
    const-string v4, ""

    .line 357
    .local v4, "emergencyRat":Ljava/lang/String;
    const-string v5, ""

    .line 358
    .local v5, "alertInfo":Ljava/lang/String;
    const/4 v6, 0x0

    .line 360
    .local v6, "isGroupCall":Z
    if-eqz v1, :cond_2

    .line 361
    const-string v7, "EccCat"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    const-string v7, "imsEmergencyRat"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    const-string v7, "DisplayText"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    const-string v7, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 366
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 368
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 369
    invoke-virtual {v0, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    .line 371
    :cond_1
    const-string v7, "com.samsung.telephony.extra.DIAL_CONFERENCE_CALL"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 374
    :cond_2
    const-string v7, "e_call"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v9, 0x2

    if-nez v7, :cond_5

    iget v7, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    if-ne v7, v9, :cond_3

    goto :goto_0

    .line 397
    :cond_3
    const-string v7, "dialstring"

    invoke-virtual {p1, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v7

    .line 398
    .local v7, "dialingString":I
    if-ne v7, v9, :cond_4

    .line 399
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto/16 :goto_4

    .line 401
    :cond_4
    iget v10, p1, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    iget v11, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v10, v11, p2, v6}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 402
    const-string v10, "oir"

    invoke-virtual {p1, v10, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/google/DataTypeConvertor;->convertToClirPrefix(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    goto :goto_4

    .line 376
    .end local v7    # "dialingString":I
    :cond_5
    :goto_0
    iget v7, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v9, v7, p2, v6}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 377
    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    .line 379
    const-string v7, "VoWIFI"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "CallRadioTech"

    if-eqz v7, :cond_6

    .line 380
    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_6
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :goto_1
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 386
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    const-string/jumbo v8, "persist.omc.sales_code"

    const-string v10, ""

    invoke-static {v8, v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    .local v8, "salesCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 388
    const-string/jumbo v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    :cond_7
    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v10

    if-nez v10, :cond_9

    sget-object v10, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v7, v10, :cond_8

    const-string v10, "KTC"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_2

    .line 394
    :cond_8
    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_3

    .line 392
    :cond_9
    :goto_2
    invoke-static {v2}, Lcom/sec/internal/google/DataTypeConvertor;->convertEccCatToURNSpecificKor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 396
    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v8    # "salesCode":Ljava/lang/String;
    :goto_3
    nop

    .line 406
    :goto_4
    if-eqz v6, :cond_a

    .line 407
    invoke-virtual {v0, v9}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 409
    :cond_a
    iget-object v7, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-static {v7}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 410
    invoke-static {p1}, Lcom/sec/internal/google/DataTypeConvertor;->processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    .line 411
    return-object v0
.end method

.method public static convertToSecCallType(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 146
    const/4 v0, 0x0

    invoke-static {v0, p0, v0, v0}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallType(IIZZ)I

    move-result v0

    return v0
.end method

.method public static convertToSecCallType(IIZZ)I
    .locals 2
    .param p0, "serviceType"    # I
    .param p1, "callType"    # I
    .param p2, "isTtyMode"    # Z
    .param p3, "isGroupCall"    # Z

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "secCallType":I
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 187
    :pswitch_1
    if-ne p0, v1, :cond_0

    .line 188
    const/4 v0, 0x7

    goto :goto_0

    .line 190
    :cond_0
    const/4 v0, 0x1

    .line 192
    goto :goto_0

    .line 184
    :pswitch_2
    const/4 v0, 0x4

    .line 185
    goto :goto_0

    .line 180
    :pswitch_3
    const/4 v0, 0x3

    .line 181
    goto :goto_0

    .line 168
    :pswitch_4
    if-ne p0, v1, :cond_1

    .line 169
    const/16 v0, 0x8

    goto :goto_0

    .line 171
    :cond_1
    if-eqz p3, :cond_2

    .line 172
    const/4 v0, 0x6

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, 0x2

    .line 177
    goto :goto_0

    .line 154
    :pswitch_5
    if-ne p0, v1, :cond_3

    .line 155
    const/4 v0, 0x7

    goto :goto_0

    .line 157
    :cond_3
    if-eqz p2, :cond_4

    .line 158
    const/16 v0, 0x9

    goto :goto_0

    .line 159
    :cond_4
    if-eqz p3, :cond_5

    .line 160
    const/4 v0, 0x5

    goto :goto_0

    .line 162
    :cond_5
    const/4 v0, 0x1

    .line 165
    nop

    .line 200
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static convertToSecMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Lcom/sec/ims/volte2/data/MediaProfile;
    .locals 7
    .param p0, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 229
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 231
    .local v0, "convertedProfile":Lcom/sec/ims/volte2/data/MediaProfile;
    const/4 v1, -0x1

    .line 232
    .local v1, "videoQuality":I
    const/4 v2, 0x0

    .line 234
    .local v2, "videoOrientation":I
    iget v3, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_2

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1

    const/16 v6, 0x10

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    const/16 v1, 0xf

    .line 254
    goto :goto_0

    .line 249
    :cond_1
    const/16 v1, 0xf

    .line 250
    const/4 v2, 0x1

    .line 251
    goto :goto_0

    .line 246
    :cond_2
    const/16 v1, 0xd

    .line 247
    goto :goto_0

    .line 242
    :cond_3
    const/16 v1, 0xd

    .line 243
    const/4 v2, 0x1

    .line 244
    goto :goto_0

    .line 239
    :cond_4
    const/16 v1, 0xc

    .line 240
    goto :goto_0

    .line 236
    :cond_5
    const/4 v1, 0x0

    .line 237
    nop

    .line 259
    :goto_0
    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_NONE:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 261
    .local v3, "audioCodec":Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;
    iget v6, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v6, v5, :cond_7

    if-eq v6, v4, :cond_6

    goto :goto_1

    .line 266
    :cond_6
    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 267
    goto :goto_1

    .line 263
    :cond_7
    sget-object v3, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRNB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    .line 264
    nop

    .line 272
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 273
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoOrientation(I)V

    .line 274
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setAudioCodec(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    .line 275
    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 277
    return-object v0
.end method

.method public static convertUrnToEccCat(Ljava/lang/String;)I
    .locals 3
    .param p0, "urn"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    return v1

    .line 39
    :cond_0
    const-string/jumbo v0, "urn:service:unspecified"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0xfe

    if-eqz v0, :cond_1

    .line 40
    return v2

    .line 41
    :cond_1
    const-string/jumbo v0, "urn:service:sos.mountain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const/16 v0, 0x10

    return v0

    .line 43
    :cond_2
    const-string/jumbo v0, "urn:service:sos.marine"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    const/16 v0, 0x8

    return v0

    .line 45
    :cond_3
    const-string/jumbo v0, "urn:service:sos.fire"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    const/4 v0, 0x4

    return v0

    .line 47
    :cond_4
    const-string/jumbo v0, "urn:service:sos.ambulance"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    const/4 v0, 0x2

    return v0

    .line 49
    :cond_5
    const-string/jumbo v0, "urn:service:sos.police"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_6
    const-string/jumbo v0, "urn:service:sos.traffic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    const/16 v0, 0x14

    return v0

    .line 53
    :cond_7
    const-string/jumbo v0, "urn:service:sos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    return v1

    .line 56
    :cond_8
    return v2
.end method

.method private static processCallComposerInfo(Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .locals 6
    .param p0, "imsprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 421
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 422
    .local v0, "cBundle":Landroid/os/Bundle;
    if-eqz p0, :cond_4

    .line 423
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 424
    .local v1, "callMainExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 425
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 426
    .local v2, "callExtras":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 427
    const-string v3, "EXTRA_CALL_IMPORTANCE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "importance"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 432
    :cond_1
    nop

    .line 433
    const-string v3, "EXTRA_CALL_SUBJECT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 434
    nop

    .line 435
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    const-string/jumbo v4, "subject"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_2
    nop

    .line 439
    const-string v3, "EXTRA_CALL_IMAGE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 440
    nop

    .line 441
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 440
    const-string v4, "image"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_3
    nop

    .line 445
    const-string v3, "EXTRA_CALL_LATITUDE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 447
    const-string v4, "EXTRA_CALL_LONGITUDE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 448
    nop

    .line 449
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    const-string v5, "longitude"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    nop

    .line 451
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 450
    const-string v4, "latitude"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    nop

    .line 453
    const-string v3, "EXTRA_CALL_RADIUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 454
    nop

    .line 455
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    const-string/jumbo v4, "radius"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .end local v1    # "callMainExtras":Landroid/os/Bundle;
    .end local v2    # "callExtras":Landroid/os/Bundle;
    :cond_4
    return-object v0
.end method
