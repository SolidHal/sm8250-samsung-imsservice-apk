.class Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;
.super Ljava/lang/Object;
.source "RcsUriProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 70
    const-string v0, "RcsUriProvider"

    const-string v1, "Connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->access$002(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    .line 72
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 76
    const-string v0, "RcsUriProvider"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;->access$002(Lcom/sec/internal/ims/servicemodules/options/RcsUriProvider;Lcom/sec/ims/options/ICapabilityService;)Lcom/sec/ims/options/ICapabilityService;

    .line 78
    return-void
.end method
