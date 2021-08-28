.class public Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;
.super Ljava/lang/Object;
.source "CallRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    const-class v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeAcceptCallTransfer(IIZILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "accept"    # Z
    .param p3, "status"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1310
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1312
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1313
    .local v1, "reasonOffset":I
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1314
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1317
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->startRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1318
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1319
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1320
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addAccept(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1322
    if-lez p3, :cond_2

    .line 1323
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1324
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addReasonPhrase(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1326
    :cond_1
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->addStatusCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1329
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptTransferCall;->endRequestAcceptTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1332
    .local v2, "acceptCallTransferOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1333
    const/16 v3, 0xd5

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1334
    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1335
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1336
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1338
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeAnswerCall(IIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "cmcCallTime"    # Ljava/lang/String;

    .line 615
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 617
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 618
    .local v1, "cmcCallTimeOffset":I
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 622
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->startRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 623
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 624
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 626
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 627
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 630
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptCall;->endRequestAcceptCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 631
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 632
    const/16 v3, 0xcd

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 633
    const/16 v3, 0x10

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 634
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 636
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 638
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeCancelTransferCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 1159
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1161
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->startRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1162
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1163
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1164
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelTransferCall;->endRequestCancelTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1166
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1167
    const/16 v2, 0xe3

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1168
    const/16 v2, 0x1d

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1169
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1171
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1173
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeClearAllCallInternal(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "cmcType"    # I

    .line 250
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 252
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->startRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 253
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->addCmcType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 254
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestClearAllCallInternal;->endRequestClearAllCallInternal(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 256
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 257
    const/16 v2, 0xf1

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 258
    const/16 v2, 0x71

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 259
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 260
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 262
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeConference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 20
    .param p0, "handle"    # I
    .param p1, "confuri"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "eventSubscribe"    # Ljava/lang/String;
    .param p4, "dialogType"    # Ljava/lang/String;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "origUri"    # Ljava/lang/String;
    .param p7, "referUriType"    # Ljava/lang/String;
    .param p8, "removeReferUriType"    # Ljava/lang/String;
    .param p9, "referUriAsserted"    # Ljava/lang/String;
    .param p10, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p11, "supportPrematureEnd"    # Z

    .line 893
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 895
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v10, -0x1

    .line 896
    .local v10, "confUriOffset":I
    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 900
    :cond_0
    const/4 v11, -0x1

    .line 901
    .local v11, "eventSubscribeOffset":I
    if-eqz v1, :cond_1

    .line 902
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 905
    :cond_1
    const/4 v12, -0x1

    .line 906
    .local v12, "dialogTypeOffset":I
    if-eqz v2, :cond_2

    .line 907
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 910
    :cond_2
    const/4 v13, -0x1

    .line 911
    .local v13, "origUriOffset":I
    if-eqz v4, :cond_3

    .line 912
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 915
    :cond_3
    const/4 v14, -0x1

    .line 916
    .local v14, "referUriTypeOffset":I
    if-eqz v5, :cond_4

    .line 917
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 920
    :cond_4
    const/4 v15, -0x1

    .line 921
    .local v15, "removeReferUriTypeOffset":I
    if-eqz v6, :cond_5

    .line 922
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 925
    :cond_5
    const/16 v16, -0x1

    .line 926
    .local v16, "referUriAssertedOffset":I
    if-eqz v7, :cond_6

    .line 927
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v0, v16

    goto :goto_0

    .line 926
    :cond_6
    move/from16 v0, v16

    .line 930
    .end local v16    # "referUriAssertedOffset":I
    .local v0, "referUriAssertedOffset":I
    :goto_0
    const/16 v16, -0x1

    .line 931
    .local v16, "useAnonymousUpdateOffset":I
    if-eqz v8, :cond_7

    .line 932
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v1, v16

    goto :goto_1

    .line 931
    :cond_7
    move/from16 v1, v16

    .line 935
    .end local v16    # "useAnonymousUpdateOffset":I
    .local v1, "useAnonymousUpdateOffset":I
    :goto_1
    array-length v2, v3

    .line 936
    .local v2, "lenOfParticipants":I
    new-array v4, v2, [I

    .line 937
    .local v4, "participantOffsetArray":[I
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_8

    .line 938
    move/from16 v16, v2

    .end local v2    # "lenOfParticipants":I
    .local v16, "lenOfParticipants":I
    aget-object v2, v3, v5

    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    aput v2, v4, v5

    .line 937
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto :goto_2

    .end local v16    # "lenOfParticipants":I
    .restart local v2    # "lenOfParticipants":I
    :cond_8
    move/from16 v16, v2

    .line 941
    .end local v2    # "lenOfParticipants":I
    .end local v5    # "i":I
    .restart local v16    # "lenOfParticipants":I
    invoke-static {v9, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 943
    .local v2, "participantsOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 945
    const/4 v5, -0x1

    if-eq v1, v5, :cond_9

    .line 946
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 949
    :cond_9
    if-eq v0, v5, :cond_a

    .line 950
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 953
    :cond_a
    if-eq v14, v5, :cond_b

    .line 954
    invoke-static {v9, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 957
    :cond_b
    if-eq v15, v5, :cond_c

    .line 958
    invoke-static {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 961
    :cond_c
    if-eq v13, v5, :cond_d

    .line 962
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 965
    :cond_d
    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 967
    if-eq v12, v5, :cond_e

    .line 968
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 971
    :cond_e
    if-eq v11, v5, :cond_f

    .line 972
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 975
    :cond_f
    const/4 v5, 0x1

    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 976
    move/from16 v5, p2

    invoke-static {v9, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 977
    move/from16 v18, v0

    move/from16 v0, p11

    .end local v0    # "referUriAssertedOffset":I
    .local v18, "referUriAssertedOffset":I
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 979
    const/4 v0, -0x1

    if-eq v10, v0, :cond_10

    .line 980
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 983
    :cond_10
    move/from16 v0, p0

    move/from16 v17, v1

    move/from16 v19, v2

    .end local v1    # "useAnonymousUpdateOffset":I
    .end local v2    # "participantsOffset":I
    .local v17, "useAnonymousUpdateOffset":I
    .local v19, "participantsOffset":I
    int-to-long v1, v0

    invoke-static {v9, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 984
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 986
    .local v1, "makeConfCallOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 987
    const/16 v2, 0xd1

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 988
    const/16 v2, 0x1e

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 989
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 991
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 993
    .local v2, "requestOffSet":I
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v0
.end method

.method static makeEndCall(IILcom/sec/internal/constants/ims/SipReason;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 8
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "reason"    # Lcom/sec/internal/constants/ims/SipReason;

    .line 567
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 569
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 570
    .local v1, "endReasonOffset":I
    const/4 v2, -0x1

    if-eqz p2, :cond_4

    .line 572
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 573
    .local v3, "protoOffset":I
    const/4 v4, -0x1

    .line 574
    .local v4, "textOffset":I
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 575
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 577
    :cond_0
    const/4 v5, -0x1

    .line 578
    .local v5, "extOffset":I
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 579
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getExtensions()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 580
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v7

    .line 581
    .local v7, "extList":[I
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->createExtensionVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    .line 584
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "extList":[I
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->startEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 585
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->isLocalRelease()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addIsLocalRelease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 586
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addProtocol(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 587
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipReason;->getCause()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 588
    if-eq v4, v2, :cond_2

    .line 589
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 591
    :cond_2
    if-eq v5, v2, :cond_3

    .line 592
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->addExtension(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 594
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall_/EndReason;->endEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 597
    .end local v3    # "protoOffset":I
    .end local v4    # "textOffset":I
    .end local v5    # "extOffset":I
    :cond_4
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->startRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 598
    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 599
    if-eq v1, v2, :cond_5

    .line 600
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->addEndReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 602
    :cond_5
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEndCall;->endRequestEndCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 603
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 604
    const/16 v3, 0xca

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 605
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 606
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 608
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 610
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeExtendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 21
    .param p0, "handle"    # I
    .param p1, "confuri"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "eventSubscribe"    # Ljava/lang/String;
    .param p4, "dialogType"    # Ljava/lang/String;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "sessId"    # I
    .param p7, "origUri"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z

    .line 1002
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1004
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v11, -0x1

    .line 1005
    .local v11, "confUriOffset":I
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1009
    :cond_0
    const/4 v12, -0x1

    .line 1010
    .local v12, "eventSubscribeOffset":I
    if-eqz v1, :cond_1

    .line 1011
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1014
    :cond_1
    const/4 v13, -0x1

    .line 1015
    .local v13, "dialogTypeOffset":I
    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1019
    :cond_2
    const/4 v14, -0x1

    .line 1020
    .local v14, "origUriOffset":I
    if-eqz v4, :cond_3

    .line 1021
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1024
    :cond_3
    const/4 v15, -0x1

    .line 1025
    .local v15, "referUriTypeOffset":I
    if-eqz v5, :cond_4

    .line 1026
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 1029
    :cond_4
    const/16 v16, -0x1

    .line 1030
    .local v16, "removeReferUriTypeOffset":I
    if-eqz v6, :cond_5

    .line 1031
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v17, v16

    goto :goto_0

    .line 1030
    :cond_5
    move/from16 v17, v16

    .line 1034
    .end local v16    # "removeReferUriTypeOffset":I
    .local v17, "removeReferUriTypeOffset":I
    :goto_0
    const/16 v16, -0x1

    .line 1035
    .local v16, "referUriAssertedOffset":I
    if-eqz v7, :cond_6

    .line 1036
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v18, v16

    goto :goto_1

    .line 1035
    :cond_6
    move/from16 v18, v16

    .line 1039
    .end local v16    # "referUriAssertedOffset":I
    .local v18, "referUriAssertedOffset":I
    :goto_1
    const/16 v16, -0x1

    .line 1040
    .local v16, "useAnonymousUpdateOffset":I
    if-eqz v8, :cond_7

    .line 1041
    invoke-virtual {v9, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v19, v16

    goto :goto_2

    .line 1040
    :cond_7
    move/from16 v19, v16

    .line 1044
    .end local v16    # "useAnonymousUpdateOffset":I
    .local v19, "useAnonymousUpdateOffset":I
    :goto_2
    array-length v10, v3

    .line 1045
    .local v10, "lenOfParticipants":I
    new-array v0, v10, [I

    .line 1046
    .local v0, "participantOffsetArray":[I
    const/16 v20, 0x0

    move/from16 v1, v20

    .local v1, "i":I
    :goto_3
    if-ge v1, v10, :cond_8

    .line 1047
    aget-object v2, v3, v1

    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    aput v2, v0, v1

    .line 1046
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p4

    goto :goto_3

    .line 1050
    .end local v1    # "i":I
    :cond_8
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 1052
    .local v1, "participantsOffset":I
    const/4 v2, 0x1

    move-object/from16 v20, v0

    .end local v0    # "participantOffsetArray":[I
    .local v20, "participantOffsetArray":[I
    new-array v0, v2, [I

    const/16 v16, 0x0

    aput p6, v0, v16

    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 1056
    .local v0, "sessionIdOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1058
    const/4 v2, -0x1

    move/from16 v3, v19

    .end local v19    # "useAnonymousUpdateOffset":I
    .local v3, "useAnonymousUpdateOffset":I
    if-eq v3, v2, :cond_9

    .line 1059
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1062
    :cond_9
    move/from16 v19, v3

    move/from16 v3, v18

    .end local v18    # "referUriAssertedOffset":I
    .local v3, "referUriAssertedOffset":I
    .restart local v19    # "useAnonymousUpdateOffset":I
    if-eq v3, v2, :cond_a

    .line 1063
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1066
    :cond_a
    if-eq v15, v2, :cond_b

    .line 1067
    invoke-static {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1070
    :cond_b
    move/from16 v18, v3

    move/from16 v3, v17

    .end local v17    # "removeReferUriTypeOffset":I
    .local v3, "removeReferUriTypeOffset":I
    .restart local v18    # "referUriAssertedOffset":I
    if-eq v3, v2, :cond_c

    .line 1071
    invoke-static {v9, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1074
    :cond_c
    if-eq v14, v2, :cond_d

    .line 1075
    invoke-static {v9, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1078
    :cond_d
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1079
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1081
    if-eq v13, v2, :cond_e

    .line 1082
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1085
    :cond_e
    if-eq v12, v2, :cond_f

    .line 1086
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1089
    :cond_f
    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1090
    move/from16 v2, p2

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1091
    move/from16 v16, v0

    move/from16 v0, p12

    .end local v0    # "sessionIdOffset":I
    .local v16, "sessionIdOffset":I
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1093
    const/4 v0, -0x1

    if-eq v11, v0, :cond_10

    .line 1094
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1097
    :cond_10
    move/from16 v0, p0

    move/from16 v17, v1

    .end local v1    # "participantsOffset":I
    .local v17, "participantsOffset":I
    int-to-long v1, v0

    invoke-static {v9, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1098
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1100
    .local v1, "makeConfCallOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1101
    const/16 v2, 0xde

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1102
    const/16 v2, 0x1e

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1103
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1105
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1107
    .local v2, "requestOffSet":I
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v0
.end method

.method static makeHandleCmcCsfb(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 1647
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1649
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->startRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1650
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1651
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1652
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleCmcCsfb;->endRequestHandleCmcCsfb(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1654
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1655
    const/16 v2, 0xee

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1656
    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1657
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1659
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1661
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeHandleDtmf(IIIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "code"    # I
    .param p3, "mode"    # I
    .param p4, "operation"    # I

    .line 1343
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1345
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->startRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1346
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1347
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1348
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1349
    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1350
    int-to-long v1, p4

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->addOperation(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1351
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHandleDtmf;->endRequestHandleDtmf(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1353
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1354
    const/16 v2, 0xcf

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1355
    const/16 v2, 0x5e

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1356
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1358
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1360
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeHoldCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 642
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdCall: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 646
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->startRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 647
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 648
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 649
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->endRequestHoldCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 651
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 652
    const/16 v2, 0xcb

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 653
    const/16 v2, 0x11

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 654
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 656
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 658
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeHoldVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 682
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 684
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->startRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 685
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 686
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 687
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldVideo;->endRequestHoldVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 689
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 690
    const/16 v2, 0xdb

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 691
    const/16 v2, 0x19

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 692
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 694
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 696
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeMakeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 24
    .param p0, "handle"    # I
    .param p1, "destUri"    # Ljava/lang/String;
    .param p2, "origUri"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "dispName"    # Ljava/lang/String;
    .param p5, "dialedNumber"    # Ljava/lang/String;
    .param p6, "ecscf"    # Ljava/lang/String;
    .param p7, "port"    # I
    .param p8, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;
    .param p9, "cli"    # Ljava/lang/String;
    .param p10, "pEmergencyInfoOfAtt"    # Ljava/lang/String;
    .param p12, "alertInfo"    # Ljava/lang/String;
    .param p13, "isLteEpsOnlyAttached"    # Z
    .param p15, "cmcBoundSessionId"    # I
    .param p16, "composerData"    # Landroid/os/Bundle;
    .param p17, "replaceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 382
    .local p11, "additionalSipHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p14, "p2p":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p14

    move-object/from16 v10, p17

    new-instance v11, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 384
    .local v11, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v13, -0x1

    .line 385
    .local v13, "origUriOffset":I
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v11, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 389
    :cond_0
    const/4 v14, -0x1

    .line 390
    .local v14, "destUriOffset":I
    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 394
    :cond_1
    const/4 v15, -0x1

    .line 395
    .local v15, "acoffset":I
    if-eqz p8, :cond_6

    .line 397
    const/16 v17, -0x1

    .line 398
    .local v17, "mimeOffset":I
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 399
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v12, v17

    goto :goto_0

    .line 398
    :cond_2
    move/from16 v12, v17

    .line 402
    .end local v17    # "mimeOffset":I
    .local v12, "mimeOffset":I
    :goto_0
    const/16 v17, -0x1

    .line 403
    .local v17, "xmlStringOffset":I
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 404
    invoke-virtual/range {p8 .. p8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v0, v17

    goto :goto_1

    .line 403
    :cond_3
    move/from16 v0, v17

    .line 407
    .end local v17    # "xmlStringOffset":I
    .local v0, "xmlStringOffset":I
    :goto_1
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 408
    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    .line 409
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 412
    :cond_4
    if-eq v0, v1, :cond_5

    .line 413
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 415
    :cond_5
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v15

    .line 417
    .end local v0    # "xmlStringOffset":I
    .end local v12    # "mimeOffset":I
    :cond_6
    move-object/from16 v0, p16

    invoke-static {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 418
    .local v1, "composerOffset":I
    const/4 v12, -0x1

    .line 419
    .local v12, "pairOffset":I
    if-eqz v7, :cond_8

    .line 420
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 v17, v12

    .end local v12    # "pairOffset":I
    .local v17, "pairOffset":I
    const-string v12, "additional header present"

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {v11, v7}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v0

    .line 422
    .local v0, "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [I

    .line 423
    .local v12, "pairOffsetArr":[I
    const/16 v19, 0x0

    .line 424
    .local v19, "i":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 425
    .local v21, "pair":I
    add-int/lit8 v22, v19, 0x1

    .end local v19    # "i":I
    .local v22, "i":I
    aput v21, v12, v19

    .line 426
    .end local v21    # "pair":I
    move/from16 v19, v22

    goto :goto_2

    .line 427
    .end local v22    # "i":I
    .restart local v19    # "i":I
    :cond_7
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v17

    move/from16 v12, v17

    goto :goto_3

    .line 419
    .end local v0    # "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "pairOffset":I
    .end local v19    # "i":I
    .local v12, "pairOffset":I
    :cond_8
    move/from16 v17, v12

    .line 429
    :goto_3
    const/4 v0, -0x1

    .line 430
    .local v0, "siphdrOffset":I
    if-eqz v7, :cond_9

    .line 431
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 432
    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 433
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 436
    :cond_9
    const/16 v17, -0x1

    .line 437
    .local v17, "ecscfOffset":I
    const/4 v7, 0x1

    if-eqz v4, :cond_a

    .line 438
    invoke-virtual {v11, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v19

    .line 439
    .local v19, "ecscfAddrOffset":I
    new-array v4, v7, [I

    .line 440
    .local v4, "ecscfOffSetList":[I
    const/16 v16, 0x0

    aput v19, v4, v16

    .line 441
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createEcscfListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v17

    move/from16 v4, v17

    goto :goto_4

    .line 437
    .end local v4    # "ecscfOffSetList":[I
    .end local v19    # "ecscfAddrOffset":I
    :cond_a
    move/from16 v4, v17

    .line 444
    .end local v17    # "ecscfOffset":I
    .local v4, "ecscfOffset":I
    :goto_4
    const/16 v17, -0x1

    .line 445
    .local v17, "cliOffset":I
    if-eqz v5, :cond_b

    .line 446
    invoke-virtual {v11, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v23, v17

    goto :goto_5

    .line 445
    :cond_b
    move/from16 v23, v17

    .line 449
    .end local v17    # "cliOffset":I
    .local v23, "cliOffset":I
    :goto_5
    const/16 v17, -0x1

    .line 450
    .local v17, "dispNameOffset":I
    if-eqz v2, :cond_d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_d

    .line 451
    const-string v7, "<PhotoRing>"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 452
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v5, "PhotoRing is set"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    .line 454
    const/4 v2, 0x0

    move/from16 v5, v17

    .end local p4    # "dispName":Ljava/lang/String;
    .local v2, "dispName":Ljava/lang/String;
    goto :goto_6

    .line 456
    .end local v2    # "dispName":Ljava/lang/String;
    .restart local p4    # "dispName":Ljava/lang/String;
    :cond_c
    invoke-virtual {v11, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v5, v17

    goto :goto_6

    .line 460
    :cond_d
    move/from16 v5, v17

    .end local v17    # "dispNameOffset":I
    .end local p4    # "dispName":Ljava/lang/String;
    .restart local v2    # "dispName":Ljava/lang/String;
    .local v5, "dispNameOffset":I
    :goto_6
    const/4 v7, -0x1

    .line 461
    .local v7, "alertInfoOffset":I
    if-eqz v8, :cond_e

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_e

    .line 462
    invoke-virtual {v11, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 465
    :cond_e
    const/16 v17, -0x1

    .line 466
    .local v17, "dialedNumberOffset":I
    if-eqz v3, :cond_f

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_f

    .line 467
    invoke-virtual {v11, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move-object/from16 p4, v2

    move/from16 v2, v17

    goto :goto_7

    .line 470
    :cond_f
    move-object/from16 p4, v2

    move/from16 v2, v17

    .end local v17    # "dialedNumberOffset":I
    .local v2, "dialedNumberOffset":I
    .restart local p4    # "dispName":Ljava/lang/String;
    :goto_7
    const/16 v17, -0x1

    .line 471
    .local v17, "pEmergencyInfoOfAttOffset":I
    if-eqz v6, :cond_10

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_10

    .line 472
    invoke-virtual {v11, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v3, v17

    goto :goto_8

    .line 475
    :cond_10
    move/from16 v3, v17

    .end local v17    # "pEmergencyInfoOfAttOffset":I
    .local v3, "pEmergencyInfoOfAttOffset":I
    :goto_8
    const/16 v17, -0x1

    .line 476
    .local v17, "p2pListOffset":I
    if-eqz v9, :cond_12

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_12

    .line 477
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 478
    .local v6, "p2pArr":[I
    sget-object v8, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    move/from16 v20, v12

    .end local v12    # "pairOffset":I
    .local v20, "pairOffset":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    .end local v1    # "composerOffset":I
    .local v21, "composerOffset":I
    const-string/jumbo v1, "p2p.size():"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v8, v6

    if-ge v1, v8, :cond_11

    .line 480
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v11, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    aput v8, v6, v1

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 482
    .end local v1    # "i":I
    :cond_11
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->createP2pListVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v17

    move/from16 v1, v17

    goto :goto_a

    .line 476
    .end local v6    # "p2pArr":[I
    .end local v20    # "pairOffset":I
    .end local v21    # "composerOffset":I
    .local v1, "composerOffset":I
    .restart local v12    # "pairOffset":I
    :cond_12
    move/from16 v21, v1

    move/from16 v20, v12

    .line 485
    .end local v1    # "composerOffset":I
    .end local v12    # "pairOffset":I
    .restart local v20    # "pairOffset":I
    .restart local v21    # "composerOffset":I
    move/from16 v1, v17

    .end local v17    # "p2pListOffset":I
    .local v1, "p2pListOffset":I
    :goto_a
    const/4 v6, -0x1

    .line 486
    .local v6, "replaceCallIdOffset":I
    if-eqz v10, :cond_13

    invoke-virtual/range {p17 .. p17}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_13

    .line 487
    invoke-virtual {v11, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 490
    :cond_13
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->startRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 491
    move/from16 v8, p0

    int-to-long v9, v8

    invoke-static {v11, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 493
    const/4 v9, -0x1

    if-eq v14, v9, :cond_14

    .line 494
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPeeruri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 497
    :cond_14
    move/from16 v9, p3

    invoke-static {v11, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 498
    const/4 v10, 0x1

    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 499
    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 500
    const/4 v10, 0x0

    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDirection(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 501
    move/from16 v10, p13

    invoke-static {v11, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addIsLteEpsOnlyAttached(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 503
    const/4 v12, -0x1

    if-eq v13, v12, :cond_15

    .line 504
    invoke-static {v11, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 507
    :cond_15
    if-eq v15, v12, :cond_16

    .line 508
    invoke-static {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 511
    :cond_16
    if-eq v4, v12, :cond_17

    .line 512
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 515
    :cond_17
    move/from16 v12, p7

    invoke-static {v11, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addEcscfPort(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 517
    move/from16 v16, v4

    move/from16 v4, v23

    const/4 v8, -0x1

    .end local v23    # "cliOffset":I
    .local v4, "cliOffset":I
    .local v16, "ecscfOffset":I
    if-eq v4, v8, :cond_18

    .line 518
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCli(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 521
    :cond_18
    if-eq v5, v8, :cond_19

    .line 522
    invoke-static {v11, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 525
    :cond_19
    if-eq v7, v8, :cond_1a

    .line 526
    invoke-static {v11, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAlertInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 529
    :cond_1a
    move/from16 v8, p15

    invoke-static {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addCmcBoundSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 530
    move/from16 v17, v4

    const/4 v4, -0x1

    .end local v4    # "cliOffset":I
    .local v17, "cliOffset":I
    if-eq v1, v4, :cond_1b

    .line 531
    invoke-static {v11, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addP2pList(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 534
    :cond_1b
    if-eq v2, v4, :cond_1c

    .line 535
    invoke-static {v11, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addDialedNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 538
    :cond_1c
    if-eq v3, v4, :cond_1d

    .line 539
    invoke-static {v11, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addPEmergencyInfoOfAtt(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 542
    :cond_1d
    if-eq v0, v4, :cond_1e

    .line 543
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addAdditionalSipHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 546
    :cond_1e
    move/from16 v18, v0

    move/from16 v0, v21

    .end local v21    # "composerOffset":I
    .local v0, "composerOffset":I
    .local v18, "siphdrOffset":I
    if-eq v0, v4, :cond_1f

    .line 547
    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 550
    :cond_1f
    if-eq v6, v4, :cond_20

    .line 551
    invoke-static {v11, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->addReplaceCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 554
    :cond_20
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeCall;->endRequestMakeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 555
    .local v4, "callReq":I
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 556
    move/from16 v21, v0

    .end local v0    # "composerOffset":I
    .restart local v21    # "composerOffset":I
    const/16 v0, 0xc9

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 557
    const/16 v0, 0xd

    invoke-static {v11, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 558
    invoke-static {v11, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 560
    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 562
    .local v0, "requestOffSet":I
    move/from16 v19, v1

    .end local v1    # "p2pListOffset":I
    .local v19, "p2pListOffset":I
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v11, v0}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeMergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 25
    .param p0, "handle"    # I
    .param p1, "sessionId1"    # I
    .param p2, "sessionId2"    # I
    .param p3, "confUri"    # Ljava/lang/String;
    .param p4, "callType"    # I
    .param p5, "eventSubscribe"    # Ljava/lang/String;
    .param p6, "dialogType"    # Ljava/lang/String;
    .param p7, "origUri"    # Ljava/lang/String;
    .param p8, "referUriType"    # Ljava/lang/String;
    .param p9, "removeReferUriType"    # Ljava/lang/String;
    .param p10, "referUriAsserted"    # Ljava/lang/String;
    .param p11, "useAnonymousUpdate"    # Ljava/lang/String;
    .param p12, "supportPrematureEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 766
    .local p13, "extraHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    new-instance v9, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 768
    .local v9, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v11, -0x1

    .line 769
    .local v11, "confUriOffset":I
    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v9, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 773
    :cond_0
    const/4 v12, -0x1

    .line 774
    .local v12, "eventSubscribeOffset":I
    if-eqz v1, :cond_1

    .line 775
    invoke-virtual {v9, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 778
    :cond_1
    const/4 v13, -0x1

    .line 779
    .local v13, "dialogTypeOffset":I
    if-eqz v2, :cond_2

    .line 780
    invoke-virtual {v9, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 783
    :cond_2
    const/4 v14, -0x1

    .line 784
    .local v14, "origUriOffset":I
    if-eqz v3, :cond_3

    .line 785
    invoke-virtual {v9, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 788
    :cond_3
    const/4 v15, -0x1

    .line 789
    .local v15, "referUriTypeOffset":I
    if-eqz v4, :cond_4

    .line 790
    invoke-virtual {v9, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 793
    :cond_4
    const/16 v16, -0x1

    .line 794
    .local v16, "removeReferUriTypeOffset":I
    if-eqz v5, :cond_5

    .line 795
    invoke-virtual {v9, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v17, v16

    goto :goto_0

    .line 794
    :cond_5
    move/from16 v17, v16

    .line 798
    .end local v16    # "removeReferUriTypeOffset":I
    .local v17, "removeReferUriTypeOffset":I
    :goto_0
    const/16 v16, -0x1

    .line 799
    .local v16, "referUriAssertedOffset":I
    if-eqz v6, :cond_6

    .line 800
    invoke-virtual {v9, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v18, v16

    goto :goto_1

    .line 799
    :cond_6
    move/from16 v18, v16

    .line 803
    .end local v16    # "referUriAssertedOffset":I
    .local v18, "referUriAssertedOffset":I
    :goto_1
    const/16 v16, -0x1

    .line 804
    .local v16, "useAnonymousUpdateOffset":I
    if-eqz v7, :cond_7

    .line 805
    invoke-virtual {v9, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v19, v16

    goto :goto_2

    .line 804
    :cond_7
    move/from16 v19, v16

    .line 809
    .end local v16    # "useAnonymousUpdateOffset":I
    .local v19, "useAnonymousUpdateOffset":I
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p2, v0, v10

    const/16 v16, 0x1

    aput p1, v0, v16

    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->createSessionIdVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 814
    .local v0, "sessionIdOffset":I
    const/16 v16, -0x1

    .line 815
    .local v16, "pairOffset":I
    if-eqz v8, :cond_9

    .line 816
    invoke-static {v9, v8}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v20

    .line 817
    .local v20, "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 818
    .local v10, "pairOffsetArr":[I
    const/16 v21, 0x0

    .line 819
    .local v21, "i":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 820
    .local v23, "pair":I
    add-int/lit8 v24, v21, 0x1

    .end local v21    # "i":I
    .local v24, "i":I
    aput v23, v10, v21

    .line 821
    .end local v23    # "pair":I
    move/from16 v21, v24

    goto :goto_3

    .line 822
    .end local v24    # "i":I
    .restart local v21    # "i":I
    :cond_8
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v16

    move/from16 v10, v16

    goto :goto_4

    .line 815
    .end local v10    # "pairOffsetArr":[I
    .end local v20    # "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "i":I
    :cond_9
    move/from16 v10, v16

    .line 825
    .end local v16    # "pairOffset":I
    .local v10, "pairOffset":I
    :goto_4
    const/16 v16, -0x1

    .line 826
    .local v16, "extraHeaderOffset":I
    if-eqz v8, :cond_a

    .line 827
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 828
    invoke-static {v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 829
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v16

    move/from16 v1, v16

    goto :goto_5

    .line 826
    :cond_a
    move/from16 v1, v16

    .line 832
    .end local v16    # "extraHeaderOffset":I
    .local v1, "extraHeaderOffset":I
    :goto_5
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->startRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 833
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    .line 834
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addExtraHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 837
    :cond_b
    move/from16 v16, v1

    move/from16 v1, v19

    .end local v19    # "useAnonymousUpdateOffset":I
    .local v1, "useAnonymousUpdateOffset":I
    .restart local v16    # "extraHeaderOffset":I
    if-eq v1, v2, :cond_c

    .line 838
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addUseAnonymousUpdate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 841
    :cond_c
    move/from16 v19, v1

    move/from16 v1, v18

    .end local v18    # "referUriAssertedOffset":I
    .local v1, "referUriAssertedOffset":I
    .restart local v19    # "useAnonymousUpdateOffset":I
    if-eq v1, v2, :cond_d

    .line 842
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriAsserted(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 845
    :cond_d
    if-eq v15, v2, :cond_e

    .line 846
    invoke-static {v9, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 849
    :cond_e
    move/from16 v18, v1

    move/from16 v1, v17

    .end local v17    # "removeReferUriTypeOffset":I
    .local v1, "removeReferUriTypeOffset":I
    .restart local v18    # "referUriAssertedOffset":I
    if-eq v1, v2, :cond_f

    .line 850
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addRemoveReferuriType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 853
    :cond_f
    if-eq v14, v2, :cond_10

    .line 854
    invoke-static {v9, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 857
    :cond_10
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 859
    if-eq v13, v2, :cond_11

    .line 860
    invoke-static {v9, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addDialogType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 863
    :cond_11
    if-eq v12, v2, :cond_12

    .line 864
    invoke-static {v9, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addEventSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 867
    :cond_12
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 868
    move/from16 v2, p4

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 869
    move/from16 v20, v0

    move/from16 v0, p12

    .end local v0    # "sessionIdOffset":I
    .local v20, "sessionIdOffset":I
    invoke-static {v9, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addSupportPrematureEnd(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 871
    const/4 v0, -0x1

    if-eq v11, v0, :cond_13

    .line 872
    invoke-static {v9, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addConfuri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 875
    :cond_13
    move/from16 v0, p0

    move/from16 v17, v1

    .end local v1    # "removeReferUriTypeOffset":I
    .restart local v17    # "removeReferUriTypeOffset":I
    int-to-long v1, v0

    invoke-static {v9, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 876
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestMakeConfCall;->endRequestMakeConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 878
    .local v1, "makeConfCallOffset":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 879
    const/16 v2, 0xd1

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 880
    const/16 v2, 0x1e

    invoke-static {v9, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 881
    invoke-static {v9, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 883
    invoke-static {v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 885
    .local v2, "requestOffSet":I
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v0, v9, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v0
.end method

.method static makeModifyCallType(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "sessionId"    # I
    .param p1, "oldType"    # I
    .param p2, "newType"    # I

    .line 1387
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1389
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->startRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1390
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1391
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addOldType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1392
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->addNewType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1393
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyCallType;->endRequestModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1395
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1396
    const/16 v2, 0xd8

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1397
    const/16 v2, 0x16

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1398
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1400
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1402
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeModifyVideoQuality(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "sessionId"    # I
    .param p1, "oldQual"    # I
    .param p2, "newQual"    # I

    .line 1407
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1409
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->startRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1410
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1411
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addOldQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1412
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->addNewQual(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1413
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestModifyVideoQuality;->endRequestModifyVideoQuality(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1415
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1416
    const/16 v2, 0xe9

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1417
    const/16 v2, 0x25

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1418
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1420
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1422
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeProgressIncomingCall(IILjava/util/HashMap;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 8
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/StackRequest;"
        }
    .end annotation

    .line 1666
    .local p2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1667
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1668
    .local v1, "pairOffset":I
    if-eqz p2, :cond_1

    .line 1669
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/StackRequestBuilderUtil;->translateExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v2

    .line 1670
    .local v2, "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 1671
    .local v3, "pairOffsetArr":[I
    const/4 v4, 0x0

    .line 1672
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1673
    .local v6, "pair":I
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    aput v6, v3, v4

    .line 1674
    .end local v6    # "pair":I
    move v4, v7

    goto :goto_0

    .line 1675
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding extra headers "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->createPairVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 1678
    .end local v2    # "pairList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "pairOffsetArr":[I
    .end local v4    # "i":I
    :cond_1
    const/4 v2, -0x1

    .line 1679
    .local v2, "extraHeaderOffset":I
    if-eqz p2, :cond_2

    .line 1680
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->startExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1681
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->addPair(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1682
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ExtraHeader;->endExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1684
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->startRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1685
    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1686
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1687
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->addExtraHeader(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1689
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestProgressIncomingCall;->endRequestProgressIncomingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1690
    .local v3, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1691
    const/16 v4, 0xda

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1692
    const/16 v4, 0x18

    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1693
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1695
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1697
    .local v4, "requestOffSet":I
    new-instance v5, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v5, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v5
.end method

.method static makePublishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 7
    .param p0, "handle"    # I
    .param p1, "origUri"    # Ljava/lang/String;
    .param p2, "dispName"    # Ljava/lang/String;
    .param p3, "xmlBody"    # Ljava/lang/String;
    .param p4, "expireTime"    # I

    .line 1264
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1266
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1267
    .local v1, "dispNameOffset":I
    if-eqz p2, :cond_0

    .line 1268
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1271
    :cond_0
    const/4 v2, -0x1

    .line 1272
    .local v2, "origUriOffset":I
    if-eqz p1, :cond_1

    .line 1273
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1276
    :cond_1
    const/4 v3, -0x1

    .line 1277
    .local v3, "xmlBodyOffset":I
    if-eqz p3, :cond_2

    .line 1278
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1281
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->startRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1282
    int-to-long v4, p0

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1284
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 1285
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addDispName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1288
    :cond_3
    if-eq v2, v4, :cond_4

    .line 1289
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1292
    :cond_4
    if-eq v3, v4, :cond_5

    .line 1293
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addXmlBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1296
    :cond_5
    invoke-static {v0, p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->addExpireTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1298
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPublishDialog;->endRequestPublishDialog(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1299
    .local v4, "requestPublisgDialog":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1300
    const/16 v5, 0xe4

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1301
    const/16 v5, 0x20

    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1302
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1303
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1305
    .local v5, "requestOffSet":I
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v6, v0, v5}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v6
.end method

.method static makePullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 11
    .param p0, "handle"    # I
    .param p1, "pullingUri"    # Ljava/lang/String;
    .param p2, "targetUri"    # Ljava/lang/String;
    .param p3, "origUri"    # Ljava/lang/String;
    .param p4, "targetDialog"    # Lcom/sec/ims/Dialog;

    .line 1178
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1180
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1181
    .local v1, "pullingUriOffset":I
    if-eqz p1, :cond_0

    .line 1182
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1185
    :cond_0
    const/4 v2, -0x1

    .line 1186
    .local v2, "targetUriOffset":I
    if-eqz p2, :cond_1

    .line 1187
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1190
    :cond_1
    const/4 v3, -0x1

    .line 1191
    .local v3, "origUriOffset":I
    if-eqz p3, :cond_2

    .line 1192
    invoke-virtual {v0, p3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1195
    :cond_2
    const/4 v4, -0x1

    .line 1196
    .local v4, "mdmnExtNumberOffset":I
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1197
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getMdmnExtNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1200
    :cond_3
    const/4 v5, -0x1

    .line 1201
    .local v5, "callIdOffset":I
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1202
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1205
    :cond_4
    const/4 v6, -0x1

    .line 1206
    .local v6, "RemoteTagOffset":I
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1207
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1210
    :cond_5
    const/4 v7, -0x1

    .line 1211
    .local v7, "LocalTagOffset":I
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1212
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1215
    :cond_6
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->startRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1217
    const/4 v8, -0x1

    if-eq v4, v8, :cond_7

    .line 1218
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addMdmnExtNumber(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1221
    :cond_7
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getVideoDirection()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addVideoDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1222
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getAudioDirection()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addAudioDirection(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1223
    const/4 v9, 0x1

    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCodec(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1224
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v9

    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1226
    if-eq v6, v8, :cond_8

    .line 1227
    invoke-static {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addRemoteTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1230
    :cond_8
    if-eq v7, v8, :cond_9

    .line 1231
    invoke-static {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addLocalTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1234
    :cond_9
    if-eq v5, v8, :cond_a

    .line 1235
    invoke-static {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addCallId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1238
    :cond_a
    if-eq v3, v8, :cond_b

    .line 1239
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addOrigUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1242
    :cond_b
    if-eq v2, v8, :cond_c

    .line 1243
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1246
    :cond_c
    if-eq v1, v8, :cond_d

    .line 1247
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addPullingUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1250
    :cond_d
    int-to-long v8, p0

    invoke-static {v0, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1251
    invoke-virtual {p4}, Lcom/sec/ims/Dialog;->isVideoPortZero()Z

    move-result v8

    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->addIsVideoPortZero(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1252
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestPullingCall;->endRequestPullingCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 1255
    .local v8, "pullingCallOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1256
    const/16 v9, 0xe0

    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1257
    const/16 v9, 0x1c

    invoke-static {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1258
    invoke-static {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1259
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    .line 1261
    .local v9, "requestOffSet":I
    new-instance v10, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v10, v0, v9}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v10
.end method

.method static makeRejectModifyCallType(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "sessionId"    # I
    .param p1, "reason"    # I

    .line 1457
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1459
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->startRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1460
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1461
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->addReason(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1462
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectModifyCallType;->endRequestRejectModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1464
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1465
    const/16 v2, 0xdd

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1466
    const/16 v2, 0x1b

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1467
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1469
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1471
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeReplyModifyCallType(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "sessionId"    # I
    .param p1, "reqType"    # I
    .param p2, "curType"    # I
    .param p3, "repType"    # I
    .param p4, "cmcCallTime"    # Ljava/lang/String;

    .line 1427
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1429
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1430
    .local v1, "cmcCallTimeOffset":I
    if-eqz p4, :cond_0

    .line 1431
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1434
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->startRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1435
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1436
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1437
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCurType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1438
    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addRepType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1440
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1441
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->addCmcCallTime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1443
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReplyModifyCallType;->endRequestReplyModifyCallType(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1445
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1446
    const/16 v3, 0xd9

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1447
    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1448
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1450
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1452
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeResumeCall(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 663
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 665
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->startRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 666
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 667
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestHoldCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 668
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeCall;->endRequestResumeCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 670
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 671
    const/16 v2, 0xcc

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 672
    const/16 v2, 0x12

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 673
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 675
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 677
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeResumeVideo(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 700
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 704
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->startRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 705
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 706
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 707
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestResumeVideo;->endRequestResumeVideo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 709
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 710
    const/16 v2, 0xdc

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 711
    const/16 v2, 0x1a

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 712
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 714
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 716
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeSendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    .line 1556
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeSendCmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1561
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1562
    .local v1, "acOffset":I
    const/4 v2, -0x1

    if-eqz p2, :cond_4

    .line 1564
    const/4 v3, -0x1

    .line 1565
    .local v3, "mimeOffset":I
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1566
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1569
    :cond_0
    const/4 v4, -0x1

    .line 1570
    .local v4, "xmlStringOffset":I
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1571
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1574
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1575
    if-eq v3, v2, :cond_2

    .line 1576
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1578
    :cond_2
    if-eq v4, v2, :cond_3

    .line 1579
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1581
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1584
    .end local v3    # "mimeOffset":I
    .end local v4    # "xmlStringOffset":I
    :cond_4
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->startRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1586
    if-eq v1, v2, :cond_5

    .line 1587
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1590
    :cond_5
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1591
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1592
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendCmcInfo;->endRequestSendCmcInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1595
    .local v2, "sendInfoOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1596
    const/16 v3, 0xf3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1597
    const/16 v3, 0x48

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1598
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1599
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1601
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeSendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 6
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "callType"    # I
    .param p3, "ussdType"    # I
    .param p4, "ac"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;

    .line 1508
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1510
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1511
    .local v1, "acOffset":I
    const/4 v2, -0x1

    if-eqz p4, :cond_4

    .line 1513
    const/4 v3, -0x1

    .line 1514
    .local v3, "mimeOffset":I
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1515
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->mimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1518
    :cond_0
    const/4 v4, -0x1

    .line 1519
    .local v4, "xmlStringOffset":I
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1520
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->contents()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1523
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->startAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1524
    if-eq v3, v2, :cond_2

    .line 1525
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addMimeType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1527
    :cond_2
    if-eq v4, v2, :cond_3

    .line 1528
    invoke-static {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->addContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1530
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;->endAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1533
    .end local v3    # "mimeOffset":I
    .end local v4    # "xmlStringOffset":I
    :cond_4
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->startRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1535
    if-eq v1, v2, :cond_5

    .line 1536
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addAdditionalContents(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1539
    :cond_5
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addUssdType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1540
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addCallType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1541
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1542
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1543
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendInfo;->endRequestSendInfo(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1546
    .local v2, "sendInfoOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1547
    const/16 v3, 0xe5

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1548
    const/16 v3, 0x47

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1549
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1550
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1552
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeSendText(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "len"    # I

    .line 1365
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1367
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1368
    .local v1, "textOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->startRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1369
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1370
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1371
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1372
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->addLen(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1373
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendText;->endRequestSendText(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1375
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1376
    const/16 v3, 0xea

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1377
    const/16 v3, 0x5f

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1378
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1380
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1382
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeStartCamera(III)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "cameraId"    # I

    .line 720
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 725
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->startRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 726
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 727
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 728
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->addCamera(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 729
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCamera;->endRequestStartCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 731
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 732
    const/16 v2, 0xdf

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 733
    const/16 v2, 0x42

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 734
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 736
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 738
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeStartCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 17
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "audioSource"    # I
    .param p3, "outputFormat"    # I
    .param p4, "maxFileSize"    # J
    .param p6, "maxDuration"    # I
    .param p7, "outputPath"    # Ljava/lang/String;
    .param p8, "audioEncodingBR"    # I
    .param p9, "audioChannels"    # I
    .param p10, "audioSamplingR"    # I
    .param p11, "audioEncoder"    # I
    .param p12, "durationInterval"    # I
    .param p13, "fileSizeInterval"    # J
    .param p15, "author"    # Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 271
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 272
    .local v1, "outputPathOffset":I
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    .line 272
    :cond_0
    move-object/from16 v2, p7

    .line 276
    :goto_0
    const/4 v3, -0x1

    .line 277
    .local v3, "authorOffset":I
    invoke-static/range {p15 .. p15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    move-object/from16 v4, p15

    invoke-virtual {v0, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_1

    .line 277
    :cond_1
    move-object/from16 v4, p15

    .line 281
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->startRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 282
    move/from16 v5, p0

    int-to-long v6, v5

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 283
    move/from16 v6, p1

    int-to-long v7, v6

    invoke-static {v0, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 284
    move/from16 v7, p2

    int-to-long v8, v7

    invoke-static {v0, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSource(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 285
    move/from16 v8, p3

    int-to-long v9, v8

    invoke-static {v0, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputFormat(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 286
    move-wide/from16 v9, p4

    invoke-static {v0, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxFileSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 287
    move/from16 v11, p6

    int-to-long v12, v11

    invoke-static {v0, v12, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addMaxDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 288
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addOutputPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 289
    move/from16 v12, p8

    int-to-long v13, v12

    invoke-static {v0, v13, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncodingBr(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 290
    move/from16 v13, p9

    int-to-long v14, v13

    invoke-static {v0, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioChannels(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 291
    move/from16 v14, p10

    move v15, v1

    .end local v1    # "outputPathOffset":I
    .local v15, "outputPathOffset":I
    int-to-long v1, v14

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioSamplingRate(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 292
    move/from16 v1, p11

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAudioEncoder(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 293
    move/from16 v2, p12

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addDurationInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 294
    move-wide/from16 v4, p13

    invoke-static {v0, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addFileSizeInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 295
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->addAuthor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 296
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartCmcRecord;->endRequestStartCmcRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 298
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 299
    const/16 v2, 0xf2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 300
    const/16 v2, 0x72

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 301
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 303
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 305
    .local v2, "requestOffSet":I
    move/from16 v16, v1

    .end local v1    # "reqOffset":I
    .local v16, "reqOffset":I
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v1
.end method

.method static makeStartLocalRingBackTone(IIII)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 168
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 170
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->startRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 171
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addStreamType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 172
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 173
    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addVolume(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 174
    int-to-long v1, p3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->addToneType(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 175
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartLocalRingBackTone;->endRequestStartLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 177
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 178
    const/16 v2, 0xe7

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 179
    const/16 v2, 0x68

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 180
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 182
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 184
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeStartRecord(IILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 209
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 210
    .local v1, "filePathOffset":I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 214
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->startRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 215
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 216
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 217
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->addFilepath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 218
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartRecord;->endRequestStartRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 220
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 221
    const/16 v3, 0xef

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 222
    const/16 v3, 0x6f

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 223
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 225
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 227
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeStartVideoEarlyMedia(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 1629
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1631
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->startRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1632
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1633
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1634
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartVideoEarlymedia;->endRequestStartVideoEarlymedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1636
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1637
    const/16 v2, 0xeb

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1638
    const/16 v2, 0x59

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1639
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1641
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1643
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeStopCamera(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I

    .line 742
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCamera: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 747
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->startRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 748
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 749
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopCamera;->endRequestStopCamera(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 751
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 752
    const/16 v2, 0xe2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 753
    const/16 v2, 0x43

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 754
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 756
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 758
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeStopLocalRingBackTone(I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I

    .line 189
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 191
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->startRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 192
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 193
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopLocalRingBackTone;->endRequestStopLocalRingBackTone(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 195
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 196
    const/16 v2, 0xe8

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 197
    const/16 v2, 0x69

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 198
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 202
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeStopRecord(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I

    .line 232
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 234
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->startRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 235
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 236
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 237
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStopRecord;->endRequestStopRecord(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 239
    .local v1, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 240
    const/16 v2, 0xf0

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 241
    const/16 v2, 0x70

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 242
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 244
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 246
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeTransferCall(IILjava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "sessionId"    # I
    .param p2, "targetUri"    # Ljava/lang/String;
    .param p3, "replacingSessionId"    # I

    .line 1134
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1136
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1137
    .local v1, "uriOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->startRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1138
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1139
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1140
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addTargetUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1142
    if-lez p3, :cond_0

    .line 1143
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->addReplacingSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1145
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestTransferCall;->endRequestTransferCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1147
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1148
    const/16 v3, 0xd4

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1149
    const/16 v3, 0x13

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1150
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1152
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1154
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeUpdateAudioInterface(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "mode"    # Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 150
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 151
    .local v1, "modeOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->startRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 152
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 153
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 154
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateAudioInterface;->endRequestUpdateAudioInterface(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 156
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 157
    const/16 v3, 0xe1

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 158
    const/16 v3, 0x46

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 159
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 161
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 163
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeUpdateCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "sessionId"    # I
    .param p1, "action"    # I
    .param p2, "codecType"    # I
    .param p3, "cause"    # I
    .param p4, "reasonText"    # Ljava/lang/String;

    .line 1476
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1478
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    const/4 v1, -0x1

    .line 1479
    .local v1, "reasonOffset":I
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1480
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1483
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->startRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1485
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1486
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addReasonText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1489
    :cond_1
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCause(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1490
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addCodecType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1491
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1492
    int-to-long v2, p0

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1493
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall;->endRequestUpdateCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1496
    .local v2, "updateCallOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1497
    const/16 v3, 0xce

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1498
    const/16 v3, 0xf

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1499
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1500
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1502
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method static makeUpdateCmcExtCallCount(II)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "callCnt"    # I

    .line 1605
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/CallRequestBuilder;->LOG_TAG:Ljava/lang/String;

    const-string v1, "makeUpdateCmcExtCallCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1610
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->startRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1612
    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addPhoneId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1613
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->addCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1615
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCmcExtCallCount;->endRequestUpdateCmcExtCallCount(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1618
    .local v1, "updateCmcExtCallCountOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1619
    const/16 v2, 0xf4

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1620
    const/16 v2, 0x49

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1621
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1622
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1624
    .local v2, "requestOffSet":I
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v3, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v3
.end method

.method static makeUpdateConfCall(IIIILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/StackRequest;
    .locals 5
    .param p0, "handle"    # I
    .param p1, "session"    # I
    .param p2, "cmd"    # I
    .param p3, "participantId"    # I
    .param p4, "participant"    # Ljava/lang/String;

    .line 1112
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1114
    .local v0, "builder":Lcom/google/flatbuffers/FlatBufferBuilder;
    invoke-virtual {v0, p4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1115
    .local v1, "parOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->startRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1116
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1117
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addCmd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1118
    int-to-long v2, p3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipantId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1119
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1120
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateConfCall;->endRequestUpdateConfCall(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 1122
    .local v2, "reqOffset":I
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1123
    const/16 v3, 0xd7

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1124
    const/16 v3, 0x1f

    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1125
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1127
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 1129
    .local v3, "requestOffSet":I
    new-instance v4, Lcom/sec/internal/ims/core/handler/secims/StackRequest;

    invoke-direct {v4, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/StackRequest;-><init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    return-object v4
.end method

.method private static prepareComposerData(Landroid/os/Bundle;Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 16
    .param p0, "composerData"    # Landroid/os/Bundle;
    .param p1, "builder"    # Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    .line 316
    .local v2, "resultOffset":I
    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 317
    const/4 v3, -0x1

    .local v3, "subOffset":I
    const/4 v4, -0x1

    .local v4, "imageOffset":I
    const/4 v5, -0x1

    .local v5, "latiOffset":I
    const/4 v6, -0x1

    .line 318
    .local v6, "longOffset":I
    const/4 v7, -0x1

    .line 319
    .local v7, "radOffset":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "importance"

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 320
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 321
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "val":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 323
    invoke-virtual {v1, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 324
    .local v12, "offset":I
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v15, 0x3

    const/4 v11, 0x2

    const/4 v14, 0x1

    sparse-switch v13, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v13, "longitude"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x4

    goto :goto_2

    :sswitch_1
    const-string v13, "image"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :sswitch_2
    const-string/jumbo v13, "radius"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v11

    goto :goto_2

    :sswitch_3
    const-string v13, "latitude"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v15

    goto :goto_2

    :sswitch_4
    const-string/jumbo v13, "subject"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move v13, v14

    goto :goto_2

    :goto_1
    const/4 v13, -0x1

    :goto_2
    if-eqz v13, :cond_5

    if-eq v13, v14, :cond_4

    if-eq v13, v11, :cond_3

    if-eq v13, v15, :cond_2

    const/4 v11, 0x4

    if-eq v13, v11, :cond_1

    goto :goto_3

    .line 338
    :cond_1
    move v6, v12

    goto :goto_3

    .line 335
    :cond_2
    move v5, v12

    .line 336
    goto :goto_3

    .line 332
    :cond_3
    move v7, v12

    .line 333
    goto :goto_3

    .line 329
    :cond_4
    move v3, v12

    .line 330
    goto :goto_3

    .line 326
    :cond_5
    move v4, v12

    .line 343
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "val":Ljava/lang/String;
    .end local v12    # "offset":I
    :cond_6
    :goto_3
    goto :goto_0

    .line 344
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->startComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 345
    const/4 v8, -0x1

    if-eq v4, v8, :cond_8

    .line 346
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImage(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 349
    :cond_8
    if-eq v3, v8, :cond_9

    .line 350
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 353
    :cond_9
    if-eq v5, v8, :cond_a

    .line 354
    invoke-static {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLatitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 357
    :cond_a
    if-eq v6, v8, :cond_b

    .line 358
    invoke-static {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addLongitude(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 361
    :cond_b
    if-eq v7, v8, :cond_c

    .line 362
    invoke-static {v1, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addRadius(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 365
    :cond_c
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 366
    nop

    .line 367
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 366
    invoke-static {v1, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->addImportance(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 370
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ComposerData;->endComposerData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 373
    .end local v3    # "subOffset":I
    .end local v4    # "imageOffset":I
    .end local v5    # "latiOffset":I
    .end local v6    # "longOffset":I
    .end local v7    # "radOffset":I
    :cond_e
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_4
        -0x55d45394 -> :sswitch_3
        -0x37f1936e -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x83009af -> :sswitch_0
    .end sparse-switch
.end method
