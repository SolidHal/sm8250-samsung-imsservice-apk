.class public Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;
.super Ljava/lang/Object;
.source "EcholocateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcholocateRtpMessage"
.end annotation


# instance fields
.field delay:Ljava/lang/String;

.field dir:Ljava/lang/String;

.field id:Ljava/lang/String;

.field jitter:Ljava/lang/String;

.field lossrate:Ljava/lang/String;

.field measuredperiod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "lossrate"    # Ljava/lang/String;
    .param p4, "delay"    # Ljava/lang/String;
    .param p5, "jitter"    # Ljava/lang/String;
    .param p6, "measuredperiod"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    .line 103
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public getDelay()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->delay:Ljava/lang/String;

    return-object v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJitter()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->jitter:Ljava/lang/String;

    return-object v0
.end method

.method public getLossrate()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->lossrate:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasuredperiod()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;->measuredperiod:Ljava/lang/String;

    return-object v0
.end method
