.class public final Lcom/sec/internal/ims/xdm/event/XdmGetBanParams;
.super Lcom/sec/internal/ims/xdm/event/XdmBaseParams;
.source "XdmGetBanParams.java"


# instance fields
.field public final mAccessToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Message;
    .param p3, "accessToken"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/xdm/event/XdmBaseParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 10
    iput-object p3, p0, Lcom/sec/internal/ims/xdm/event/XdmGetBanParams;->mAccessToken:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XdmGetBanParams [mXui = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmGetBanParams;->mXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmGetBanParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmGetBanParams;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
