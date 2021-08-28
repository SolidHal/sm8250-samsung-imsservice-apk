.class public Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;
.super Ljava/lang/Object;
.source "IncomingCallEvent.java"


# instance fields
.field private final mCallType:I

.field private final mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field private final mPeerAddr:Lcom/sec/ims/util/NameAddr;

.field private final mPreAlerting:Z

.field private final mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRemoteVideoCapa:Z

.field private final mSessionID:I


# direct methods
.method public constructor <init>(Lcom/sec/ims/ImsRegistration;IILcom/sec/ims/util/NameAddr;ZZLcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "sessionId"    # I
    .param p3, "callType"    # I
    .param p4, "peerAddr"    # Lcom/sec/ims/util/NameAddr;
    .param p5, "preAlerting"    # Z
    .param p6, "remoteHasVideoCapa"    # Z
    .param p7, "params"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRemoteVideoCapa:Z

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 30
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mSessionID:I

    .line 31
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mCallType:I

    .line 32
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 33
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPreAlerting:Z

    .line 34
    iput-boolean p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRemoteVideoCapa:Z

    .line 35
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 36
    return-void
.end method


# virtual methods
.method public getCallType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mCallType:I

    return v0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRegistration:Lcom/sec/ims/ImsRegistration;

    return-object v0
.end method

.method public getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-object v0
.end method

.method public getPeerAddr()Lcom/sec/ims/util/NameAddr;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-object v0
.end method

.method public getPreAlerting()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mPreAlerting:Z

    return v0
.end method

.method public getRemoteVideoCapa()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mRemoteVideoCapa:Z

    return v0
.end method

.method public getSessionID()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->mSessionID:I

    return v0
.end method
