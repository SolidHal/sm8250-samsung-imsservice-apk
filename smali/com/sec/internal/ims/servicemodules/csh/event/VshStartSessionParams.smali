.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;
.super Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;
.source "VshStartSessionParams.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "receiver"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Message;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 20
    return-void
.end method
