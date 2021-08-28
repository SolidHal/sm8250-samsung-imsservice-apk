.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;,
        Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;,
        Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    }
.end annotation


# instance fields
.field mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

.field mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

.field mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRtpData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    return-object v0
.end method

.method public getSignalData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-object v0
.end method

.method public getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    return-object v0
.end method

.method public setRtpData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "lossrate"    # Ljava/lang/String;
    .param p4, "delay"    # Ljava/lang/String;
    .param p5, "jitter"    # Ljava/lang/String;
    .param p6, "measuredperiod"    # Ljava/lang/String;

    .line 131
    new-instance v7, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mRtpData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    .line 132
    return-void
.end method

.method public setSignalData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "line1"    # Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "cseq"    # Ljava/lang/String;
    .param p5, "sessionid"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;
    .param p7, "contents"    # Ljava/lang/String;
    .param p8, "isEpdgCall"    # Z

    .line 121
    new-instance v9, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p0

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mSignalData:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    .line 123
    return-void
.end method

.method public setType(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;)V
    .locals 0
    .param p1, "type"    # Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->mType:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    .line 113
    return-void
.end method
