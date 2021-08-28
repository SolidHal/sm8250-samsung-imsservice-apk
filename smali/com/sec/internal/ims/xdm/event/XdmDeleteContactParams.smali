.class public final Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;
.super Lcom/sec/internal/ims/xdm/event/XdmBaseParams;
.source "XdmDeleteContactParams.java"


# instance fields
.field public final mAccessToken:Ljava/lang/String;

.field public final mAssociatedIds:Ljava/lang/String;

.field public final mContactId:Ljava/lang/String;

.field public final mEtag:Ljava/lang/String;

.field public final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "etag"    # Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/Message;
    .param p6, "accessToken"    # Ljava/lang/String;
    .param p7, "associatedIds"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p5}, Lcom/sec/internal/ims/xdm/event/XdmBaseParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mContactId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mUuid:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mEtag:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mAccessToken:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mAssociatedIds:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XdmDeleteContactParams [mXui = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContactId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mContactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUuid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEtag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAssociatedIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDeleteContactParams;->mAssociatedIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
