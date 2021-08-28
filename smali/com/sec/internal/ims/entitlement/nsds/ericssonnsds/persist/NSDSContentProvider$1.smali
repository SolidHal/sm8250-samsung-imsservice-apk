.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;
.super Ljava/lang/Object;
.source "NSDSContentProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->connectToNSDSMultiSimService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    .line 828
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 831
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected: Connected to NSDSMultiSimService."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connect DB"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    .line 837
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 841
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected: Disconnected."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    .line 843
    return-void
.end method
