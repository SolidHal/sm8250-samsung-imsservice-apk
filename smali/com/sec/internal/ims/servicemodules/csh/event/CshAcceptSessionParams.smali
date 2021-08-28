.class public Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;
.super Ljava/lang/Object;
.source "CshAcceptSessionParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mSessionId:I


# direct methods
.method public constructor <init>(ILandroid/os/Message;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Landroid/os/Message;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mSessionId:I

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    .line 23
    return-void
.end method
