.class Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;
.super Landroid/database/ContentObserver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    .line 214
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 215
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 219
    const-string v0, "SimManager"

    const-string v1, "ImsServiceSwitch updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p2, :cond_1

    .line 223
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 224
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 225
    const-string/jumbo v2, "phoneId mismatch, No need to update"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$ImsServiceSwitchObserver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v2, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 230
    .end local v1    # "phoneId":I
    :cond_1
    return-void
.end method
