.class public abstract Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.super Lcom/sec/internal/helper/State;
.source "ImSessionStateBase.java"


# instance fields
.field mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field mPhoneId:I


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 12
    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 13
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    .line 14
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 15
    return-void
.end method


# virtual methods
.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 20
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processMessagingEvent(Landroid/os/Message;)Z

    move-result v0

    .local v0, "retVal":Z
    goto :goto_0

    .line 22
    .end local v0    # "retVal":Z
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processGroupChatManagementEvent(Landroid/os/Message;)Z

    move-result v0

    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 25
    .end local v0    # "retVal":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processSessionConnectionEvent(Landroid/os/Message;)Z

    move-result v0

    .line 28
    .restart local v0    # "retVal":Z
    :goto_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 40
    const/4 v0, 0x0

    return v0
.end method
