.class Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;
.super Ljava/lang/Object;
.source "EntitlementConfigProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->connectToEntitlementConfigService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    .line 414
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 417
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected: Connected to EntitlementConfigService."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect DB"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    new-instance v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->access$102(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;)Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    .line 423
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 427
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    .line 429
    return-void
.end method
