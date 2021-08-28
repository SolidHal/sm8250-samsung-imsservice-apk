.class public abstract Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.super Ljava/lang/Object;
.source "FcmMessage.java"


# instance fields
.field protected transient origMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract broadcastFcmMessage(Landroid/content/Context;)V
.end method

.method protected deriveMsisdnFromRecipientUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "recipientUri"    # Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 22
    .local v0, "imsUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 26
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOrigMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->origMessage:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    const/4 v0, 0x1

    return v0
.end method
