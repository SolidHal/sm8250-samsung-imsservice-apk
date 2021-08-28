.class Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;
.super Ljava/lang/Object;
.source "PresenceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->initPresecenceService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    .line 162
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 166
    const-string v0, "PresenceProvider"

    const-string v1, "Connected to SocialPresenceService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    invoke-static {p2}, Lcom/sec/ims/presence/IPresenceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/presence/IPresenceService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->access$102(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;Lcom/sec/ims/presence/IPresenceService;)Lcom/sec/ims/presence/IPresenceService;

    .line 169
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 173
    const-string v0, "PresenceProvider"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;->access$102(Lcom/sec/internal/ims/servicemodules/presence/PresenceProvider;Lcom/sec/ims/presence/IPresenceService;)Lcom/sec/ims/presence/IPresenceService;

    .line 175
    return-void
.end method
