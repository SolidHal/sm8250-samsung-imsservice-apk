.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;
.super Ljava/lang/Object;
.source "IshTransferCompleteEvent.java"


# instance fields
.field public mSessionId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;->mSessionId:I

    .line 9
    return-void
.end method
