.class public Lcom/sec/internal/ims/xdm/event/XdmBaseParams;
.super Ljava/lang/Object;
.source "XdmBaseParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public final mXui:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Message;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/xdm/event/XdmBaseParams;->mXui:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/xdm/event/XdmBaseParams;->mCallback:Landroid/os/Message;

    .line 24
    return-void
.end method
