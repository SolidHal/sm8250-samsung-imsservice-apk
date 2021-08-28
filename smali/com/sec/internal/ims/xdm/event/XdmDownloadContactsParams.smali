.class public final Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;
.super Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;
.source "XdmDownloadContactsParams.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mUserObj:Ljava/lang/Object;

.field public final mWhat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;Ljava/lang/String;Landroid/os/Message;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 10
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;
    .param p3, "dirOrDocName"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "selector"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;
    .param p6, "h"    # Landroid/os/Handler;
    .param p7, "what"    # I
    .param p8, "userObj"    # Ljava/lang/Object;

    .line 37
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;Ljava/lang/String;Landroid/os/Message;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;Ljava/lang/String;Landroid/os/Message;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .param p1, "xui"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;
    .param p3, "dirOrDocName"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/Message;
    .param p5, "selector"    # Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;
    .param p6, "h"    # Landroid/os/Handler;
    .param p7, "what"    # I
    .param p8, "userObj"    # Ljava/lang/Object;
    .param p9, "accessToken"    # Ljava/lang/String;

    .line 27
    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;Ljava/lang/String;Landroid/os/Message;Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;Ljava/lang/String;)V

    .line 28
    move-object v0, p6

    iput-object v0, v7, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mHandler:Landroid/os/Handler;

    .line 29
    move v1, p7

    iput v1, v7, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mWhat:I

    .line 30
    move-object/from16 v2, p8

    iput-object v2, v7, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mUserObj:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XdmDownloadContactsParams [mXui = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mXui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mType:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$DocType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNodeSelector = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mNodeSelector:Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAccessToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHandler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/xdm/event/XdmDownloadContactsParams;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method
