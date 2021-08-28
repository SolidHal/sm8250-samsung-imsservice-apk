.class public Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;
.super Ljava/lang/Object;
.source "RegistrationRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMediaParameters(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I
    .locals 34
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 350
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCallProfile()Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v1

    .line 351
    .local v1, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioCodec:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 352
    .local v2, "audioCodec":I
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 353
    .local v3, "amrMode":I
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbMode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 354
    .local v4, "amrWbMode":I
    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAs:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 355
    .local v5, "audioAs":I
    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRs:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 356
    .local v6, "audioRs":I
    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRr:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 357
    .local v7, "audioRr":I
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCodec:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 358
    .local v8, "videoCodec":I
    iget-object v9, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormat:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 359
    .local v9, "displayFormat":I
    iget-object v10, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->packetizationMode:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 360
    .local v10, "packetizationMode":I
    iget-object v11, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDiscontinuousTransmission:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 361
    .local v11, "evsDiscontinuousTransmission":I
    iget-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDtxRecv:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 362
    .local v12, "evsDtxRecv":I
    iget-object v13, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsHeaderFull:Ljava/lang/String;

    invoke-virtual {v0, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 363
    .local v13, "evsHeaderFull":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsModeSwitch:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 364
    .local v14, "evsModeSwitch":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 365
    .local v15, "evsChannelSend":I
    move/from16 v16, v15

    .end local v15    # "evsChannelSend":I
    .local v16, "evsChannelSend":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelRecv:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 366
    .local v15, "evsChannelRecv":I
    move/from16 v17, v15

    .end local v15    # "evsChannelRecv":I
    .local v17, "evsChannelRecv":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsChannelAwareReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 367
    .local v15, "evsChannelAwareReceive":I
    move/from16 v18, v15

    .end local v15    # "evsChannelAwareReceive":I
    .local v18, "evsChannelAwareReceive":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsCodecModeRequest:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 368
    .local v15, "evsCodecModeRequest":I
    move/from16 v19, v15

    .end local v15    # "evsCodecModeRequest":I
    .local v19, "evsCodecModeRequest":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 369
    .local v15, "evsBitRateSend":I
    move/from16 v20, v15

    .end local v15    # "evsBitRateSend":I
    .local v20, "evsBitRateSend":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 370
    .local v15, "evsBitRateReceive":I
    move/from16 v21, v15

    .end local v15    # "evsBitRateReceive":I
    .local v21, "evsBitRateReceive":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSend:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 371
    .local v15, "evsBandwidthSend":I
    move/from16 v22, v15

    .end local v15    # "evsBandwidthSend":I
    .local v22, "evsBandwidthSend":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceive:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 372
    .local v15, "evsBandwidthReceive":I
    move/from16 v23, v15

    .end local v15    # "evsBandwidthReceive":I
    .local v23, "evsBandwidthReceive":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBandwidth:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 373
    .local v15, "evsDefaultBandwidth":I
    move/from16 v24, v15

    .end local v15    # "evsDefaultBandwidth":I
    .local v24, "evsDefaultBandwidth":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsDefaultBitrate:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 374
    .local v15, "evsDefaultBitrate":I
    move/from16 v25, v15

    .end local v15    # "evsDefaultBitrate":I
    .local v25, "evsDefaultBitrate":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->displayFormatHevc:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 375
    .local v15, "displayFormatHevc":I
    move/from16 v26, v14

    .end local v14    # "evsModeSwitch":I
    .local v26, "evsModeSwitch":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateSendExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 376
    .local v14, "evsBitRateSendExt":I
    move/from16 v27, v14

    .end local v14    # "evsBitRateSendExt":I
    .local v27, "evsBitRateSendExt":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBitRateReceiveExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 377
    .local v14, "evsBitRateReceiveExt":I
    move/from16 v28, v14

    .end local v14    # "evsBitRateReceiveExt":I
    .local v28, "evsBitRateReceiveExt":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthSendExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 378
    .local v14, "evsBandwidthSendExt":I
    move/from16 v29, v14

    .end local v14    # "evsBandwidthSendExt":I
    .local v29, "evsBandwidthSendExt":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsBandwidthReceiveExt:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 379
    .local v14, "evsBandwidthReceiveExt":I
    move/from16 v30, v14

    .end local v14    # "evsBandwidthReceiveExt":I
    .local v30, "evsBandwidthReceiveExt":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsLimitedCodec:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 381
    .local v14, "evsLimitedCodec":I
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->startMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 382
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 383
    move/from16 v31, v2

    .end local v2    # "audioCodec":I
    .local v31, "audioCodec":I
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioPort:I

    move/from16 v32, v13

    move/from16 v33, v14

    .end local v13    # "evsHeaderFull":I
    .end local v14    # "evsLimitedCodec":I
    .local v32, "evsHeaderFull":I
    .local v33, "evsLimitedCodec":I
    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 384
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioDscp:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioDscp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 385
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 386
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbePayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 387
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbOaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 388
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrWbPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 389
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOpenPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrOpenPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 390
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 391
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfWbPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfWbPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 392
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 393
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 394
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrOaWbMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 395
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->amrBeWbMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrbeWbMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 396
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsMaxRed:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsMaxRed(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 397
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 398
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAmrWbMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 399
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioAs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 400
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 401
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 402
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->pTime:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addPTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 403
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->maxPTime:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addMaxTime(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 404
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 405
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoPort:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 406
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->frameRate:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addFrameRate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 407
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormat(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 408
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormatHevc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 409
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addPacketizationMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 410
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265QvgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 411
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265QvgaLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265QvgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 412
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265VgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 413
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265VgaLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265VgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 414
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265Hd720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 415
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h265Hd720pLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH265Hd720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 416
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 417
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 418
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264VgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 419
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264VgaLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264VgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 420
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264QvgaPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 421
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264QvgaLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264QvgalPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 422
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264CifPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 423
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264CifLPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264CiflPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 424
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAs:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoAs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 425
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRs:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 426
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRr:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 427
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAs:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextAs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 428
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRs:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextRs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 429
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textRr:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextRr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 430
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textPort:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 431
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 432
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 433
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 434
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 435
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textAvpf:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextAvpf(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 436
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->textSrtp:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addTextSrtp(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 437
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoCapabilities:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoCapabilities(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 438
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableScr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableScr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 439
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtpTimeout:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addRtpTimeout(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 440
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->rtcpTimeout:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addRtcpTimeout(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 441
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h263QcifPayloadType:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH263QcifPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 442
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->audioRtcpXr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addAudioRtcpXr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 443
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->videoRtcpXr:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addVideoRtcpXr(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 444
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->dtmfMode:I

    int-to-long v13, v2

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDtmfMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 445
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableEvsCodec:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableEvsCodec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 446
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDiscontinuousTransmission(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 447
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDtxRecv(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 448
    move/from16 v2, v32

    .end local v32    # "evsHeaderFull":I
    .local v2, "evsHeaderFull":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsHeaderFull(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 449
    move/from16 v13, v26

    .end local v26    # "evsModeSwitch":I
    .local v13, "evsModeSwitch":I
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsModeSwitch(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 450
    move/from16 v14, v16

    .end local v16    # "evsChannelSend":I
    .local v14, "evsChannelSend":I
    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 451
    move/from16 v2, v17

    .end local v17    # "evsChannelRecv":I
    .local v2, "evsChannelRecv":I
    .restart local v32    # "evsHeaderFull":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelRecv(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 452
    move/from16 v2, v18

    .end local v18    # "evsChannelAwareReceive":I
    .local v2, "evsChannelAwareReceive":I
    .restart local v17    # "evsChannelRecv":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsChannelAwareReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 453
    move/from16 v2, v19

    .end local v19    # "evsCodecModeRequest":I
    .local v2, "evsCodecModeRequest":I
    .restart local v18    # "evsChannelAwareReceive":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsCodecModeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 454
    move/from16 v2, v20

    .end local v20    # "evsBitRateSend":I
    .local v2, "evsBitRateSend":I
    .restart local v19    # "evsCodecModeRequest":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 455
    move/from16 v2, v21

    .end local v21    # "evsBitRateReceive":I
    .local v2, "evsBitRateReceive":I
    .restart local v20    # "evsBitRateSend":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 456
    move/from16 v2, v22

    .end local v22    # "evsBandwidthSend":I
    .local v2, "evsBandwidthSend":I
    .restart local v21    # "evsBitRateReceive":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthSend(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 457
    move/from16 v2, v23

    .end local v23    # "evsBandwidthReceive":I
    .local v2, "evsBandwidthReceive":I
    .restart local v22    # "evsBandwidthSend":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthReceive(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 458
    nop

    .end local v2    # "evsBandwidthReceive":I
    .restart local v23    # "evsBandwidthReceive":I
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayload:I

    move/from16 v16, v3

    .end local v3    # "amrMode":I
    .local v16, "amrMode":I
    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 459
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evs2ndPayload:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvs2ndPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 460
    move/from16 v2, v24

    .end local v24    # "evsDefaultBandwidth":I
    .local v2, "evsDefaultBandwidth":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDefaultBandwidth(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 461
    move/from16 v3, v25

    .end local v25    # "evsDefaultBitrate":I
    .local v3, "evsDefaultBitrate":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsDefaultBitrate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 462
    nop

    .end local v2    # "evsDefaultBandwidth":I
    .restart local v24    # "evsDefaultBandwidth":I
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableRtcpOnActiveCall:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableRtcpOnActiveCall(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 463
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->enableAvSync:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEnableAvSync(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 464
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addDisplayFormatHevc(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 465
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pPayloadType:I

    .end local v3    # "evsDefaultBitrate":I
    .restart local v25    # "evsDefaultBitrate":I
    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720pPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 466
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->h264720pLPayloadType:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addH264720plPayload(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 467
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->ignoreRtcpTimeoutOnHoldCall:Z

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addIgnoreRtcpTimeoutOnHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 468
    iget v2, v1, Lcom/sec/internal/ims/core/handler/secims/CallProfile;->evsPayloadExt:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsPayloadExt(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 469
    move/from16 v2, v27

    .end local v27    # "evsBitRateSendExt":I
    .local v2, "evsBitRateSendExt":I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateSendExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 470
    move/from16 v3, v28

    .end local v28    # "evsBitRateReceiveExt":I
    .local v3, "evsBitRateReceiveExt":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBitRateReceiveExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 471
    move-object/from16 v26, v1

    move/from16 v1, v29

    .end local v29    # "evsBandwidthSendExt":I
    .local v1, "evsBandwidthSendExt":I
    .local v26, "cp":Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthSendExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 472
    move/from16 v1, v30

    .end local v30    # "evsBandwidthReceiveExt":I
    .local v1, "evsBandwidthReceiveExt":I
    .restart local v29    # "evsBandwidthSendExt":I
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsBandwidthReceiveExt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 473
    move/from16 v1, v33

    .end local v33    # "evsLimitedCodec":I
    .local v1, "evsLimitedCodec":I
    .restart local v30    # "evsBandwidthReceiveExt":I
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->addEvsLimitedCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 475
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation_/MediaConfig;->endMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v27

    return v27
.end method

.method private static addUaCreationReq(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I
    .locals 40
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->addMediaParameters(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I

    move-result v2

    .line 79
    .local v2, "mediaOffest":I
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 80
    .local v3, "interface_nw":I
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 81
    .local v4, "pdn":I
    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 82
    .local v5, "impi":I
    iget-object v6, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 83
    .local v6, "impu":I
    iget-object v7, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 84
    .local v7, "domain":I
    iget-object v8, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 85
    .local v8, "transtype":I
    const-string v9, ""

    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 86
    .local v10, "encr_alg":I
    invoke-virtual {v0, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 87
    .local v9, "auth_alg":I
    iget-object v11, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 88
    .local v11, "registeralgo":I
    iget-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 89
    .local v12, "prefid":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRemoteuritype()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri$UriType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 90
    .local v13, "uritype":I
    iget-object v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 91
    .local v14, "userAgent":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 92
    .local v15, "instanceId":I
    move/from16 v16, v2

    .end local v2    # "mediaOffest":I
    .local v16, "mediaOffest":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCurPani()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 93
    .local v2, "curpani":I
    move/from16 v17, v2

    .end local v2    # "curpani":I
    .local v17, "curpani":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->msrpTransType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 94
    .local v2, "msrpTransType":I
    move/from16 v18, v2

    .end local v2    # "msrpTransType":I
    .local v18, "msrpTransType":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPrivacyHeaderRestricted()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 95
    .local v2, "privacyHederRestricted":I
    move/from16 v19, v2

    .end local v2    # "privacyHederRestricted":I
    .local v19, "privacyHederRestricted":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 96
    .local v2, "lastPaniHeader":I
    move/from16 v20, v2

    .end local v2    # "lastPaniHeader":I
    .local v20, "lastPaniHeader":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSelectTransportAfterTcpReset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 98
    .local v2, "selectTransportAfterTcpReset":I
    const/16 v21, -0x1

    .line 99
    .local v21, "hostname":I
    move/from16 v22, v2

    .end local v2    # "selectTransportAfterTcpReset":I
    .local v22, "selectTransportAfterTcpReset":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_0

    .line 99
    :cond_0
    move/from16 v2, v21

    .line 103
    .end local v21    # "hostname":I
    .local v2, "hostname":I
    :goto_0
    const/16 v21, -0x1

    .line 104
    .local v21, "sessionRefresher":I
    move/from16 v23, v2

    .end local v2    # "hostname":I
    .local v23, "hostname":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 105
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_1

    .line 104
    :cond_1
    move/from16 v2, v21

    .line 108
    .end local v21    # "sessionRefresher":I
    .local v2, "sessionRefresher":I
    :goto_1
    const/16 v21, -0x1

    .line 109
    .local v21, "authalg":I
    const/16 v24, -0x1

    .line 110
    .local v24, "encralg":I
    move/from16 v25, v2

    .end local v2    # "sessionRefresher":I
    .local v25, "sessionRefresher":I
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    .line 112
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v24

    move/from16 v2, v21

    move/from16 v26, v24

    goto :goto_2

    .line 110
    :cond_2
    move/from16 v2, v21

    move/from16 v26, v24

    .line 115
    .end local v21    # "authalg":I
    .end local v24    # "encralg":I
    .local v2, "authalg":I
    .local v26, "encralg":I
    :goto_2
    const/16 v21, -0x1

    .line 116
    .local v21, "password":I
    move/from16 v24, v2

    .end local v2    # "authalg":I
    .local v24, "authalg":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 117
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_3

    .line 116
    :cond_3
    move/from16 v2, v21

    .line 120
    .end local v21    # "password":I
    .local v2, "password":I
    :goto_3
    const/16 v21, -0x1

    .line 121
    .local v21, "displayName":I
    move/from16 v27, v2

    .end local v2    # "password":I
    .local v27, "password":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_4

    .line 121
    :cond_4
    move/from16 v2, v21

    .line 125
    .end local v21    # "displayName":I
    .local v2, "displayName":I
    :goto_4
    const/16 v21, -0x1

    .line 126
    .local v21, "uuid":I
    move/from16 v28, v2

    .end local v2    # "displayName":I
    .local v28, "displayName":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 127
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_5

    .line 126
    :cond_5
    move/from16 v2, v21

    .line 130
    .end local v21    # "uuid":I
    .local v2, "uuid":I
    :goto_5
    const/16 v21, -0x1

    .line 131
    .local v21, "contactDisplayName":I
    move/from16 v29, v2

    .end local v2    # "uuid":I
    .local v29, "uuid":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 132
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_6

    .line 131
    :cond_6
    move/from16 v2, v21

    .line 135
    .end local v21    # "contactDisplayName":I
    .local v2, "contactDisplayName":I
    :goto_6
    const/16 v21, -0x1

    .line 136
    .local v21, "realm":I
    move/from16 v30, v2

    .end local v2    # "contactDisplayName":I
    .local v30, "contactDisplayName":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 137
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_7

    .line 136
    :cond_7
    move/from16 v2, v21

    .line 140
    .end local v21    # "realm":I
    .local v2, "realm":I
    :goto_7
    const/16 v21, -0x1

    .line 141
    .local v21, "imMsgTech":I
    move/from16 v31, v2

    .end local v2    # "realm":I
    .local v31, "realm":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 142
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v21

    move/from16 v2, v21

    goto :goto_8

    .line 141
    :cond_8
    move/from16 v2, v21

    .line 145
    .end local v21    # "imMsgTech":I
    .local v2, "imMsgTech":I
    :goto_8
    const/16 v21, -0x1

    .line 146
    .local v21, "serviceListOffSet":I
    move/from16 v32, v2

    .end local v2    # "imMsgTech":I
    .local v32, "imMsgTech":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    if-eqz v2, :cond_9

    .line 147
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    move/from16 v33, v15

    .end local v15    # "instanceId":I
    .local v33, "instanceId":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v15

    invoke-static {v0, v2, v15}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v2

    .line 148
    .local v2, "serviceList":[I
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createServiceListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v21

    move/from16 v2, v21

    goto :goto_9

    .line 146
    .end local v2    # "serviceList":[I
    .end local v33    # "instanceId":I
    .restart local v15    # "instanceId":I
    :cond_9
    move/from16 v33, v15

    .end local v15    # "instanceId":I
    .restart local v33    # "instanceId":I
    move/from16 v2, v21

    .line 151
    .end local v21    # "serviceListOffSet":I
    .local v2, "serviceListOffSet":I
    :goto_9
    const/4 v15, -0x1

    .line 152
    .local v15, "featureTagList":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v21

    if-eqz v21, :cond_b

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getOwnCapabilities()Lcom/sec/ims/options/Capabilities;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v21

    .line 154
    .local v21, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v34, v15

    .end local v15    # "featureTagList":I
    .local v34, "featureTagList":I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [I

    .line 155
    .local v15, "featuretags":[I
    const/16 v35, 0x0

    .line 156
    .local v35, "i":I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_a
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Integer;

    .line 157
    .local v37, "featureTag":Ljava/lang/Integer;
    add-int/lit8 v38, v35, 0x1

    .end local v35    # "i":I
    .local v38, "i":I
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v39

    aput v39, v15, v35

    .line 158
    .end local v37    # "featureTag":Ljava/lang/Integer;
    move/from16 v35, v38

    goto :goto_a

    .line 159
    .end local v38    # "i":I
    .restart local v35    # "i":I
    :cond_a
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v34

    move/from16 v15, v34

    goto :goto_b

    .line 152
    .end local v21    # "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v34    # "featureTagList":I
    .end local v35    # "i":I
    .local v15, "featureTagList":I
    :cond_b
    move/from16 v34, v15

    .line 162
    :goto_b
    move/from16 v21, v15

    .end local v15    # "featureTagList":I
    .local v21, "featureTagList":I
    iget-object v15, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    move/from16 v34, v2

    .end local v2    # "serviceListOffSet":I
    .local v34, "serviceListOffSet":I
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    .line 163
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v15, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v2

    .line 162
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createAcbVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 165
    .local v2, "acbOffset":I
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->startRequestUACreation(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getProfileId()I

    move-result v15

    move/from16 v35, v14

    .end local v14    # "userAgent":I
    .local v35, "userAgent":I
    int-to-long v14, v15

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addProfileId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 167
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addInterfaceNw(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNetId()J

    move-result-wide v14

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNetId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 169
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 170
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImpi(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 171
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 172
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDomain(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 173
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSipOutbound(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 174
    iget v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    int-to-long v14, v14

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addQParam(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getControlDscp()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addControlDscp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 176
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTransType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 177
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEmergencySupport(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 178
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsIpsec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 179
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEncrAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 180
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAuthAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 181
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegisterAlgo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 182
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPrefId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 183
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRemoteUriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 184
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondEnabled:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPrecondEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 185
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondInitialSendrecv:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPrecondInitialSendrecv(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 186
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addWifiPreConditionEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 187
    iget-boolean v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSipCompactHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 188
    iget v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionExpires:I

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSessionExpires(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 189
    iget v14, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->minSe:I

    int-to-long v14, v14

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMinse(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 190
    move/from16 v14, v35

    .end local v35    # "userAgent":I
    .restart local v14    # "userAgent":I
    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUserAgent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 191
    move/from16 v15, v33

    .end local v33    # "instanceId":I
    .local v15, "instanceId":I
    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addInstanceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 192
    move/from16 v33, v3

    .end local v3    # "interface_nw":I
    .local v33, "interface_nw":I
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSoftphoneEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSoftphoneEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 193
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isCdmalessEnabled:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsCdmalessEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 194
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    move/from16 v35, v4

    .end local v4    # "pdn":I
    .local v35, "pdn":I
    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRingbackTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 195
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRingingTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer1()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer1(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer2()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer2(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimer4()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimer4(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerA()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerA(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerD()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerD(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerB()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerB(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerC()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerC(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerE()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerE(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerF()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerF(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerG()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerG(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerH()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerH(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerI()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerI(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerJ()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerJ(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 209
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerK()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerK(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTimerTS()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTimerTs(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMssSize()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMssSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSipMobility()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSipMobility(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsEnableGruu()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEnableGruu(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsEnableSessionId()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsEnableSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAudioEngineType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAudioEngineType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTextMode()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 217
    move/from16 v3, v17

    .end local v17    # "curpani":I
    .local v3, "curpani":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCurPani(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 218
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isVceConfigEnabled:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsVceConfigEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 219
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isGcfConfigEnabled:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsGcfConfigEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 220
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isNsdsServiceEnabled:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsNsdsServiceEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 221
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isMsrpBearerUsed:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsMsrpBearerUsed(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 222
    iget v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->subscriberTimer:I

    .end local v3    # "curpani":I
    .restart local v17    # "curpani":I
    int-to-long v3, v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSubscriberTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 223
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSubscribeReg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 224
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useKeepAlive:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseKeepAlive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 225
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selfPort:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSelfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 226
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->scmVersion:I

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addScmVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 227
    move/from16 v3, v18

    .end local v18    # "msrpTransType":I
    .local v3, "msrpTransType":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMsrpTransType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 228
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isFullCodecOfferRequired:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsFullCodecOfferRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 229
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isRcsTelephonyFeatureTagRequired:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsRcsTelephonyFeatureTagRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 230
    iget-boolean v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsXqEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRcsProfile()I

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRcsProfile(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsTransportNeeded()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedTransportInContact(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRat()I

    move-result v4

    .end local v3    # "msrpTransType":I
    .restart local v18    # "msrpTransType":I
    int-to-long v3, v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getDbrTimer()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDbrTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsTcpGracefulShutdownEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsTcpGracefulShutdownEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTcpRstUacErrorcode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTcpRstUacErrorcode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTcpRstUasErrorcode()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTcpRstUasErrorcode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 238
    move/from16 v3, v19

    .end local v19    # "privacyHederRestricted":I
    .local v3, "privacyHederRestricted":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPrivacyHeaderRestricted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 239
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUsePemHeader()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUsePemHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getPhoneId()I

    move-result v4

    .end local v3    # "privacyHederRestricted":I
    .restart local v19    # "privacyHederRestricted":I
    int-to-long v3, v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportEct()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportEct(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getEarlyMediaRtpTimeoutTimer()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEarlyMediaRtpTimeoutTimer(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getAddHistinfo()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAddHistinfo(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportedGeolocationPhase()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportedGeolocationPhase(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getNeedPidfSipMsg()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addNeedPidfSipMsg(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseProvisionalResponse100rel()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseProvisionalResponse100rel(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUse183OnProgressIncoming()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUse183OnProgressIncoming(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseQ850causeOn480()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseQ850causeOn480(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupport183ForIr92v9Precondition()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupport183ForIr92v9Precondition(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportImsNotAvailable()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportImsNotAvailable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportLtePreferred()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportLtePreferred(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getUseSubcontactWhenResub()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUseSubcontactWhenResub(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportUpgradePrecondition()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportUpgradePrecondition(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportReplaceMerge()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportReplaceMerge(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isServerHeaderEnabled()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsServerHeaderEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 256
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportAccessType(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 257
    move/from16 v3, v20

    .end local v20    # "lastPaniHeader":I
    .local v3, "lastPaniHeader":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addLastPaniHeader(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 258
    move/from16 v4, v22

    .end local v22    # "selectTransportAfterTcpReset":I
    .local v4, "selectTransportAfterTcpReset":I
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSelectTransportAfterTcpReset(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 259
    nop

    .end local v3    # "lastPaniHeader":I
    .restart local v20    # "lastPaniHeader":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSrvccVersion()I

    move-result v3

    .end local v4    # "selectTransportAfterTcpReset":I
    .restart local v22    # "selectTransportAfterTcpReset":I
    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 260
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportSubscribeDialogEvent:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportSubscribeDialogEvent(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 261
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsSimMobility(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getCmcType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getVideoCrbtSupportType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addVideoCrbtSupportType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRetryInviteOnTcpReset()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRetryInviteOnTcpReset(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getEnableVerstat()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEnableVerstat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegRetryBaseTime()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegRetryBaseTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getRegRetryMaxTime()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRegRetryMaxTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportDualRcs()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportDualRcs(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getIsPttSupported()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsPttSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getTryReregisterFromKeepalive()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addTryReregisterFromKeepalive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSslType()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSslType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getHashAlgoTypeType()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addHashAlgoType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupport199ProvisionalResponse()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupport199ProvisionalResponse(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportNetworkInitUssi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportNetworkInitUssi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSendByeForUssi()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSendByeForUssi(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getSupportRfc6337ForDelayedOffer()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSupportRfc6337ForDelayedOffer(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 278
    const/4 v3, -0x1

    move/from16 v4, v23

    .end local v23    # "hostname":I
    .local v4, "hostname":I
    if-eq v4, v3, :cond_c

    .line 279
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addHostname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 282
    :cond_c
    move/from16 v23, v4

    move/from16 v4, v25

    .end local v25    # "sessionRefresher":I
    .local v4, "sessionRefresher":I
    .restart local v23    # "hostname":I
    if-eq v4, v3, :cond_d

    .line 283
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addSessionRefresher(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 286
    :cond_d
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    if-eqz v3, :cond_f

    .line 287
    iget-boolean v3, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIsIpsec(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 288
    move/from16 v3, v24

    move/from16 v24, v4

    const/4 v4, -0x1

    .end local v4    # "sessionRefresher":I
    .local v3, "authalg":I
    .local v24, "sessionRefresher":I
    if-eq v3, v4, :cond_e

    .line 289
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAuthAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 292
    :cond_e
    move/from16 v36, v3

    move/from16 v3, v26

    .end local v26    # "encralg":I
    .local v3, "encralg":I
    .local v36, "authalg":I
    if-eq v3, v4, :cond_10

    .line 293
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addEncrAlg(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_c

    .line 286
    .end local v3    # "encralg":I
    .end local v36    # "authalg":I
    .restart local v4    # "sessionRefresher":I
    .local v24, "authalg":I
    .restart local v26    # "encralg":I
    :cond_f
    move/from16 v36, v24

    move/from16 v3, v26

    move/from16 v24, v4

    const/4 v4, -0x1

    .line 297
    .end local v4    # "sessionRefresher":I
    .end local v26    # "encralg":I
    .restart local v3    # "encralg":I
    .local v24, "sessionRefresher":I
    .restart local v36    # "authalg":I
    :cond_10
    :goto_c
    move/from16 v26, v3

    move/from16 v3, v27

    .end local v27    # "password":I
    .local v3, "password":I
    .restart local v26    # "encralg":I
    if-eq v3, v4, :cond_11

    .line 298
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addPassword(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 301
    :cond_11
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    if-eqz v4, :cond_13

    .line 302
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateMno(Lcom/sec/internal/constants/Mno;)I

    move-result v4

    .line 303
    .local v4, "mno":I
    if-eqz v4, :cond_12

    .line 304
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 v27, v3

    .end local v3    # "password":I
    .restart local v27    # "password":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v5

    .end local v5    # "impi":I
    .local v37, "impi":I
    const-string/jumbo v5, "translateMno: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMno(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_d

    .line 303
    .end local v27    # "password":I
    .end local v37    # "impi":I
    .restart local v3    # "password":I
    .restart local v5    # "impi":I
    :cond_12
    move/from16 v27, v3

    move/from16 v37, v5

    .end local v3    # "password":I
    .end local v5    # "impi":I
    .restart local v27    # "password":I
    .restart local v37    # "impi":I
    goto :goto_d

    .line 301
    .end local v4    # "mno":I
    .end local v27    # "password":I
    .end local v37    # "impi":I
    .restart local v3    # "password":I
    .restart local v5    # "impi":I
    :cond_13
    move/from16 v27, v3

    move/from16 v37, v5

    .line 309
    .end local v3    # "password":I
    .end local v5    # "impi":I
    .restart local v27    # "password":I
    .restart local v37    # "impi":I
    :goto_d
    move/from16 v1, v28

    const/4 v3, -0x1

    .end local v28    # "displayName":I
    .local v1, "displayName":I
    if-eq v1, v3, :cond_14

    .line 310
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 313
    :cond_14
    move/from16 v4, v29

    .end local v29    # "uuid":I
    .local v4, "uuid":I
    if-eq v4, v3, :cond_15

    .line 314
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addUuid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 317
    :cond_15
    move/from16 v5, v30

    .end local v30    # "contactDisplayName":I
    .local v5, "contactDisplayName":I
    if-eq v5, v3, :cond_16

    .line 318
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addContactDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 321
    :cond_16
    move/from16 v28, v1

    move/from16 v1, v31

    .end local v31    # "realm":I
    .local v1, "realm":I
    .restart local v28    # "displayName":I
    if-eq v1, v3, :cond_17

    .line 322
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addRealm(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 325
    :cond_17
    move/from16 v31, v1

    move/from16 v1, v32

    .end local v32    # "imMsgTech":I
    .local v1, "imMsgTech":I
    .restart local v31    # "realm":I
    if-eq v1, v3, :cond_18

    .line 326
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addImMsgTech(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 329
    :cond_18
    move/from16 v32, v1

    move/from16 v1, v34

    .end local v34    # "serviceListOffSet":I
    .local v1, "serviceListOffSet":I
    .restart local v32    # "imMsgTech":I
    if-eq v1, v3, :cond_19

    .line 330
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addServiceList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 333
    :cond_19
    move/from16 v34, v1

    move/from16 v1, v21

    .end local v21    # "featureTagList":I
    .local v1, "featureTagList":I
    .restart local v34    # "serviceListOffSet":I
    if-eq v1, v3, :cond_1a

    .line 334
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 337
    :cond_1a
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateConfigDualIms()I

    move-result v3

    move/from16 v29, v4

    .end local v4    # "uuid":I
    .restart local v29    # "uuid":I
    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addConfigDualIms(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 338
    move/from16 v3, v16

    .end local v16    # "mediaOffest":I
    .local v3, "mediaOffest":I
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addMediaConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 340
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1b

    .line 341
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addAcb(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 344
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isDisplayNameIgnored()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->addIgnoreDisplayName(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 346
    invoke-static/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->endRequestUACreation(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    return v4
.end method

.method private static akaAuthInfoReq(Lcom/google/flatbuffers/FlatBufferBuilder;JILjava/lang/String;)I
    .locals 3
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J
    .param p3, "recvMng"    # I
    .param p4, "resp"    # Ljava/lang/String;

    .line 625
    invoke-virtual {p0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 627
    .local v0, "akaRespOffset":I
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->startRequestUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 628
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 629
    int-to-long v1, p3

    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addRecvMng(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 630
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->addAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 631
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAkaResp;->endRequestUpdateAkaResp(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    return v1
.end method

.method private static deleteUaReq(Lcom/google/flatbuffers/FlatBufferBuilder;J)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J

    .line 496
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->startRequestUADeletion(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 497
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 498
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUADeletion;->endRequestUADeletion(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private static imeiReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;)I
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "imei"    # Ljava/lang/String;

    .line 1002
    invoke-virtual {p1, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1003
    .local v0, "imeioffset":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->startRegiConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1004
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->addImei(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1005
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RegiConfig;->endRegiConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1006
    .local v1, "regiOffset":I
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1007
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1008
    invoke-static {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1009
    int-to-long v2, p0

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1010
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    return v2
.end method

.method static makeConfigCall(IZZZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "ttySessionRequired"    # Z
    .param p2, "rttSessionRequired"    # Z
    .param p3, "automode"    # Z

    .line 1032
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1034
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->startCallConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1035
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addTtySessionRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1036
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addAutomaticMode(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1037
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->addRttSessionRequired(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1038
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/CallConfig;->endCallConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1040
    .local v1, "configOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1041
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1042
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1043
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1045
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1047
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1048
    const/16 v3, 0x65

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1049
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1050
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1052
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1054
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeConfigRCS(IIILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 19
    .param p0, "phoneId"    # I
    .param p1, "ftchunksize"    # I
    .param p2, "ishchunksize"    # I
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "isMsrpCema"    # Z
    .param p5, "downloadsPath"    # Ljava/lang/String;
    .param p6, "isConfSubscribeEnabled"    # Z
    .param p7, "exploderUri"    # Ljava/lang/String;
    .param p8, "pagerModeLimit"    # I
    .param p9, "useMsrpDiscardPort"    # Z
    .param p10, "isAggrImdnSupported"    # Z
    .param p11, "isPrivacyDisable"    # Z
    .param p12, "cbMsgTech"    # I
    .param p13, "endUserConfReqId"    # Ljava/lang/String;

    .line 914
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 916
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 917
    .local v2, "uriOffset":I
    move-object/from16 v3, p5

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 918
    .local v4, "pathOffset":I
    move-object/from16 v5, p7

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 919
    .local v6, "exUriOffset":I
    move-object/from16 v7, p13

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 920
    .local v8, "endUserConfOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->startRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 921
    move/from16 v9, p1

    int-to-long v10, v9

    invoke-static {v0, v10, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addRcsFtChunkSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 922
    move/from16 v10, p2

    int-to-long v11, v10

    invoke-static {v0, v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addRcsIshChunkSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 923
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addConfUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 924
    move/from16 v11, p4

    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsMsrpCema(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 925
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addDownloadsPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 926
    move/from16 v12, p6

    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsConfSubscribeEnabled(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 927
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addExploderUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 928
    move/from16 v13, p8

    int-to-long v14, v13

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addPagerModeSizeLimit(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 929
    move/from16 v14, p9

    invoke-static {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addUseMsrpDiscardPort(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 930
    move/from16 v15, p10

    invoke-static {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsAggrImdnSupported(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 931
    move/from16 v1, p11

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addIsCbPrivacyDisable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 932
    move/from16 v1, p12

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addCbMsgTech(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 933
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addEndUserConfReqId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 934
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->endRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 936
    .local v1, "configOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 937
    move/from16 v16, v2

    .end local v2    # "uriOffset":I
    .local v16, "uriOffset":I
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 938
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 939
    move/from16 v2, p0

    move/from16 v17, v4

    .end local v4    # "pathOffset":I
    .local v17, "pathOffset":I
    int-to-long v3, v2

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 940
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 942
    .local v3, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 943
    const/16 v4, 0x65

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 944
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 945
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 947
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 949
    .local v4, "requestOffSet":I
    move/from16 v18, v1

    .end local v1    # "configOffset":I
    .local v18, "configOffset":I
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeConfigRCSOff(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "suspenduser"    # Ljava/lang/String;

    .line 954
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 956
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 957
    .local v1, "userOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->startRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 958
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->addSuspendUser(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 959
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/RcsConfig;->endRcsConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 961
    .local v2, "configOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 962
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 963
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 964
    int-to-long v3, p0

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 965
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 967
    .local v3, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 968
    const/16 v4, 0x65

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 969
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 970
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 972
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 974
    .local v4, "requestOffSet":I
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v5, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v5
.end method

.method static makeConfigRegistration(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "imei"    # Ljava/lang/String;

    .line 1015
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1017
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->imeiReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;)I

    move-result v1

    .line 1019
    .local v1, "regioffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1020
    const/16 v2, 0x65

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1022
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1023
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1025
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1027
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeConfigSrvcc(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "phone_id"    # I
    .param p1, "version"    # I

    .line 60
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 62
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->startRequestUpdateSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 63
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 64
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 65
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateSrvccVersion;->endRequestUpdateSrvccVersion(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 68
    .local v1, "setSrvccVersion":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 69
    const/16 v2, 0x71

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 70
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 71
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 72
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 74
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeCreateUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "ua"    # Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    .line 480
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 482
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->addUaCreationReq(Lcom/google/flatbuffers/FlatBufferBuilder;Lcom/sec/internal/ims/core/handler/secims/UaProfile;)I

    move-result v1

    .line 484
    .local v1, "uaCreation":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 485
    const/16 v2, 0x66

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 487
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 488
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 490
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 492
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeDeleteUA(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I

    .line 503
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 505
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->deleteUaReq(Lcom/google/flatbuffers/FlatBufferBuilder;J)I

    move-result v1

    .line 507
    .local v1, "uaDeletion":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 508
    const/16 v2, 0x67

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 510
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 511
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 513
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 515
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeNetworkSuspended(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "state"    # Z

    .line 760
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 765
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v1, p0

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->networkSuspendReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I

    move-result v1

    .line 767
    .local v1, "nwkSuspended":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 768
    const/16 v2, 0x6c

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 770
    const/4 v2, 0x7

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 771
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 773
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 775
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeRegister(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 13
    .param p0, "handle"    # I
    .param p1, "pcscfAddr"    # Ljava/lang/String;
    .param p2, "pcscfPort"    # I
    .param p3, "regExpires"    # I
    .param p6, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p8, "accessToken"    # Ljava/lang/String;
    .param p9, "authServerUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 607
    .local p4, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "thirdPartyFeatureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 609
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    move v2, p0

    move-object v3, v0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->registrationReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 612
    .local v1, "registerReq":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 613
    const/16 v2, 0x68

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 615
    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 616
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 619
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 621
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeRequestUpdateFeatureTag(IJ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 7
    .param p0, "handle"    # I
    .param p1, "features"    # J

    .line 779
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestUpdateFeatureTag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 784
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v1

    .line 785
    .local v1, "featureTagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 786
    .local v2, "featureTagArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 787
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 786
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 790
    .end local v3    # "i":I
    :cond_0
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    .line 792
    .local v3, "featureTagListOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->startRequestUpdateFeatureTag(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 793
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 794
    int-to-long v4, p0

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 795
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateFeatureTag;->endRequestUpdateFeatureTag(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 798
    .local v4, "requestUpdateFeatureTagOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 799
    const/16 v5, 0x6d

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 800
    const/16 v5, 0xc

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 801
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 802
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 804
    .local v5, "requestOffSet":I
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v6, v0, v5}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v6
.end method

.method static makeSendAuthResponse(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "tid"    # I
    .param p2, "response"    # Ljava/lang/String;

    .line 635
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAuthResponse: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 641
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v1, p0

    invoke-static {v0, v1, v2, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->akaAuthInfoReq(Lcom/google/flatbuffers/FlatBufferBuilder;JILjava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "akaAuthInfo":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 644
    const/16 v2, 0x69

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 646
    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 647
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 649
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 651
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeSendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 17
    .param p0, "handle"    # I
    .param p1, "intf"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "transport"    # Ljava/lang/String;
    .param p6, "family"    # Ljava/lang/String;
    .param p7, "netId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 656
    .local p3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 658
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 659
    .local v1, "familyOffset":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    .line 659
    :cond_0
    move-object/from16 v2, p6

    .line 663
    :goto_0
    const/4 v3, -0x1

    .line 664
    .local v3, "transportOffset":I
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 665
    move-object/from16 v4, p5

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_1

    .line 664
    :cond_1
    move-object/from16 v4, p5

    .line 668
    :goto_1
    const/4 v5, -0x1

    .line 669
    .local v5, "typeOffset":I
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 670
    move-object/from16 v6, p4

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    goto :goto_2

    .line 669
    :cond_2
    move-object/from16 v6, p4

    .line 673
    :goto_2
    const/4 v7, -0x1

    .line 674
    .local v7, "hostnameOffset":I
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 675
    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    goto :goto_3

    .line 674
    :cond_3
    move-object/from16 v8, p2

    .line 678
    :goto_3
    const/4 v9, -0x1

    .line 679
    .local v9, "interface_nwOffset":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 680
    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    goto :goto_4

    .line 679
    :cond_4
    move-object/from16 v10, p1

    .line 683
    :goto_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    .line 684
    .local v11, "dnsServerArr":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    array-length v13, v11

    if-ge v12, v13, :cond_5

    .line 685
    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v0, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    aput v14, v11, v12

    .line 684
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v13, p3

    .line 688
    .end local v12    # "i":I
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->createDnsServerListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    .line 690
    .local v12, "dnsServerListOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->startRequestDnsQuery(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 691
    const/4 v14, -0x1

    if-eq v1, v14, :cond_6

    .line 692
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addFamily(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 695
    :cond_6
    if-eq v3, v14, :cond_7

    .line 696
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addTransport(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 699
    :cond_7
    if-eq v5, v14, :cond_8

    .line 700
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 703
    :cond_8
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addDnsServerList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 705
    if-eq v7, v14, :cond_9

    .line 706
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addHostname(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 709
    :cond_9
    if-eq v9, v14, :cond_a

    .line 710
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addInterfaceNw(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 713
    :cond_a
    move/from16 v14, p0

    move v15, v1

    .end local v1    # "familyOffset":I
    .local v15, "familyOffset":I
    int-to-long v1, v14

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 714
    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->addNetId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 715
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestDnsQuery;->endRequestDnsQuery(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 718
    .local v1, "sendDnsQueryOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 719
    const/16 v2, 0x6a

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 720
    const/16 v2, 0x45

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 721
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 722
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 724
    .local v2, "requestOffSet":I
    move/from16 v16, v1

    .end local v1    # "sendDnsQueryOffset":I
    .local v16, "sendDnsQueryOffset":I
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeSetPreferredImpu(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "impu"    # Ljava/lang/String;

    .line 737
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 739
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    int-to-long v1, p0

    invoke-static {v0, v1, v2, p1}, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->preferredImpuReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;)I

    move-result v1

    .line 741
    .local v1, "impuOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 742
    const/16 v2, 0x6b

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 744
    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 745
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 747
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 749
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeSetTextMode(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "mode"    # I

    .line 830
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 832
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->startRequestSetTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 833
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->addTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 834
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 835
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetTextMode;->endRequestSetTextMode(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 838
    .local v1, "setTextModeOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 839
    const/16 v2, 0x70

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 840
    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 841
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 842
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 844
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeUpdateScreenOnOff(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "on"    # I

    .line 979
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 981
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->startScreenConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 982
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->addOn(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 983
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ScreenConfig;->endScreenConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 985
    .local v1, "configOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 986
    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 987
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 988
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 989
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 991
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 992
    const/16 v3, 0x65

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 993
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 994
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 996
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 998
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeUpdateServiceVersion(ILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 10
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 869
    .local p1, "svMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateServiceVersion:phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 872
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 876
    :cond_0
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 878
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 879
    .local v1, "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 880
    .local v2, "pairOffsetArr":[I
    const/4 v3, 0x0

    .line 881
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 882
    .local v5, "pair":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aput v5, v2, v3

    .line 883
    .end local v5    # "pair":I
    move v3, v6

    goto :goto_1

    .line 884
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_1
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v4

    .line 886
    .local v4, "pairOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 887
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 888
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 890
    .local v5, "extraHeaderOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->startServiceVersionConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 891
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->addExtraHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 892
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig_/ServiceVersionConfig;->endServiceVersionConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 894
    .local v6, "svOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->startRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 895
    const/4 v7, 0x5

    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfigType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 896
    int-to-long v7, p0

    invoke-static {v0, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 897
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->addConfig(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 898
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCommonConfig;->endRequestUpdateCommonConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 900
    .local v7, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 901
    const/16 v8, 0x65

    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 902
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 903
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 905
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 907
    .local v8, "requestOffSet":I
    new-instance v9, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v9, v0, v8}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v9
.end method

.method static makeUpdateVceConfig(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "config"    # Z

    .line 808
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVceConfig: handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vceEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 813
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->startRequestUpdateVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 814
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 815
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->addVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 816
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateVceConfig;->endRequestUpdateVceConfig(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 819
    .local v1, "UpdateVceConfigOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 820
    const/16 v2, 0x6e

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 821
    const/16 v2, 0x63

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 822
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 823
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 825
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeUpdateXqEnable(IZ)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "phone_id"    # I
    .param p1, "enable"    # Z

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/RegistrationRequestBuilder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXqEnable():  enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 852
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->startRequestUpdateXqEnable(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 853
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 854
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->addEnable(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 855
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateXqEnable;->endRequestUpdateXqEnable(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 858
    .local v1, "offsetXqEanble":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 859
    const/16 v2, 0x72

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 860
    const/16 v2, 0xb

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 861
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 862
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 864
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method private static networkSuspendReq(Lcom/google/flatbuffers/FlatBufferBuilder;JZ)I
    .locals 1
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J
    .param p3, "state"    # Z

    .line 753
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->startRequestNetworkSuspended(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 754
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 755
    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->addState(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 756
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestNetworkSuspended;->endRequestNetworkSuspended(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method private static preferredImpuReq(Lcom/google/flatbuffers/FlatBufferBuilder;JLjava/lang/String;)I
    .locals 2
    .param p0, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handle"    # J
    .param p3, "impu"    # Ljava/lang/String;

    .line 728
    invoke-virtual {p0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 729
    .local v0, "mpuOffset":I
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->startRequestSetPreferredImpu(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 730
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 731
    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->addImpu(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 732
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSetPreferredImpu;->endRequestSetPreferredImpu(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    return v1
.end method

.method private static registrationReq(ILcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 18
    .param p0, "handle"    # I
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;
    .param p2, "pcscfAddr"    # Ljava/lang/String;
    .param p3, "pcscfPort"    # I
    .param p4, "regExpires"    # I
    .param p7, "ownCap"    # Lcom/sec/ims/options/Capabilities;
    .param p9, "accessToken"    # Ljava/lang/String;
    .param p10, "authServerUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 521
    .local p5, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "thirdPartyFeatureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    const/4 v6, -0x1

    .line 522
    .local v6, "pcscsfOffSet":I
    if-eqz p2, :cond_0

    .line 523
    invoke-virtual/range {p1 .. p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 524
    .local v7, "pcscfAddrOffset":I
    const/4 v8, 0x1

    new-array v8, v8, [I

    .line 525
    .local v8, "pcscfOffSetList":[I
    const/4 v9, 0x0

    aput v7, v8, v9

    .line 526
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createPcscfAddrListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 529
    .end local v7    # "pcscfAddrOffset":I
    .end local v8    # "pcscfOffSetList":[I
    :cond_0
    const/4 v7, -0x1

    .line 530
    .local v7, "serviceListOffSet":I
    if-eqz v1, :cond_1

    .line 531
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v0, v1, v8}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v8

    .line 532
    .local v8, "serviceListOffsets":[I
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createServiceListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 535
    .end local v8    # "serviceListOffsets":[I
    :cond_1
    const/4 v8, -0x1

    .line 536
    .local v8, "impuListOffSet":I
    if-eqz v2, :cond_2

    .line 537
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v0, v2, v9}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v9

    .line 538
    .local v9, "impuListOffsets":[I
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createImpuListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 541
    .end local v9    # "impuListOffsets":[I
    :cond_2
    const/4 v9, -0x1

    .line 542
    .local v9, "tParyFetrTagOffSet":I
    if-eqz v3, :cond_3

    .line 543
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v0, v3, v10}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v10

    .line 544
    .local v10, "tPrtyFetrTagOffsets":[I
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->createThirdpartyFeatureListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    .line 547
    .end local v10    # "tPrtyFetrTagOffsets":[I
    :cond_3
    const/4 v10, -0x1

    .line 548
    .local v10, "accessTokenOffst":I
    if-eqz v4, :cond_4

    .line 549
    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 552
    :cond_4
    const/4 v11, -0x1

    .line 553
    .local v11, "featureTagOffSet":I
    if-eqz p7, :cond_6

    .line 554
    invoke-virtual/range {p7 .. p7}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateFeatureTag(J)Ljava/util/List;

    move-result-object v12

    .line 555
    .local v12, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [I

    .line 556
    .local v13, "featuretags":[I
    const/4 v14, 0x0

    .line 557
    .local v14, "i":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 558
    .local v16, "featureTag":I
    add-int/lit8 v17, v14, 0x1

    .end local v14    # "i":I
    .local v17, "i":I
    aput v16, v13, v14

    .line 559
    .end local v16    # "featureTag":I
    move/from16 v14, v17

    goto :goto_0

    .line 560
    .end local v17    # "i":I
    .restart local v14    # "i":I
    :cond_5
    invoke-static {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUACreation;->createFeatureTagListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v11

    .line 563
    .end local v12    # "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "featuretags":[I
    .end local v14    # "i":I
    :cond_6
    const/4 v12, -0x1

    .line 564
    .local v12, "authServerUrlOffst":I
    if-eqz v5, :cond_7

    .line 565
    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 569
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->startRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 570
    move/from16 v13, p0

    int-to-long v14, v13

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 571
    move/from16 v14, p4

    int-to-long v1, v14

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addRegExp(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 573
    const/4 v1, -0x1

    if-eq v11, v1, :cond_8

    .line 574
    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addFeatureTagList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 577
    :cond_8
    if-eq v6, v1, :cond_9

    .line 578
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfAddrList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 581
    :cond_9
    if-eq v7, v1, :cond_a

    .line 582
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addServiceList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 585
    :cond_a
    if-eq v8, v1, :cond_b

    .line 586
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addImpuList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 589
    :cond_b
    if-eqz v3, :cond_c

    .line 590
    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addThirdpartyFeatureList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 593
    :cond_c
    if-eqz v4, :cond_d

    .line 594
    invoke-static {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addAccessToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 597
    :cond_d
    if-eqz v5, :cond_e

    .line 598
    invoke-static {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addAuthServerUrl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 600
    :cond_e
    move/from16 v1, p3

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->addPcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 601
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRegistration;->endRequestRegistration(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    return v2
.end method
