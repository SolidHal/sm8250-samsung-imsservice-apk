.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;
.super Landroid/database/ContentObserver;
.source "SoftphoneClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 208
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 209
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 213
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->access$000(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->access$100(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 215
    .local v0, "accountLabelUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoftphoneLabelObserver onChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 219
    :cond_0
    return-void
.end method
