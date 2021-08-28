.class Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;
.super Landroid/database/ContentObserver;
.source "NSDSConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->access$100(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    .line 42
    .local v0, "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    if-eqz v0, :cond_1

    .line 44
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->scheduleRefreshDeviceConfig(I)V

    goto :goto_0

    .line 46
    .end local v0    # "mnoNsdsStrategy":Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    :cond_0
    sget-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OOBE setup complete: trigger boot up process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->onDeviceReady()V

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    nop

    .line 50
    :goto_1
    return-void
.end method
