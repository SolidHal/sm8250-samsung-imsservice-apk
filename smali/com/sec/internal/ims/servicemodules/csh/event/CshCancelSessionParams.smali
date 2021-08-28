.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;
.super Ljava/lang/Object;
.source "CshCancelSessionParams.java"


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    .line 20
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 21
    return-void
.end method
