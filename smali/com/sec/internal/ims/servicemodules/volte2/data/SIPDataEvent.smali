.class public Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;
.super Ljava/lang/Object;
.source "SIPDataEvent.java"


# instance fields
.field mIsRequest:Z

.field mSipMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "sipmsg"    # Ljava/lang/String;
    .param p2, "isrequest"    # Z

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mSipMessage:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mIsRequest:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getIsRequest()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mIsRequest:Z

    return v0
.end method

.method public getSipMessage()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/SIPDataEvent;->mSipMessage:Ljava/lang/String;

    return-object v0
.end method
