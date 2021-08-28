.class public Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;
.super Lcom/sec/internal/ims/xdm/event/XdmBaseParams;
.source "XdmFetchDocumentParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;,
        Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;
    }
.end annotation


# instance fields
.field public final mAccessToken:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public final mNodeSelector:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;

.field public final mType:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;Ljava/lang/String;Landroid/os/Message;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;Ljava/lang/String;)V
    .locals 0
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;
    .param p3, "dir_or_doc_name"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "selector"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;
    .param p6, "accessToken"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/xdm/event/XdmBaseParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 53
    iput-object p2, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mType:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;

    .line 54
    iput-object p3, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mName:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mNodeSelector:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;

    .line 56
    iput-object p6, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mAccessToken:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XdmFetchDocumentParams [mXui = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mType:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNodeSelector = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mNodeSelector:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
