.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;
.super Ljava/lang/Object;
.source "CapabilityProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 146
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 150
    const-string v0, "CapabilityProvider"

    const-string v1, "Connected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$002(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    .line 154
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 155
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 156
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;)V

    invoke-interface {v2, v3, v1}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "phoneCount":I
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1100(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$900(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$1000()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 216
    const-string v0, "CapabilityProvider"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$002(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    .line 218
    return-void
.end method
