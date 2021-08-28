.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;
.super Landroid/database/ContentObserver;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 1193
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1196
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1197
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z

    move-result-object v1

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 1198
    const-string v1, "UtServiceModule"

    const-string v2, "Loaded Config Data"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1199
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->removeMessages(ILjava/lang/Object;)V

    .line 1200
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->sendMessage(Landroid/os/Message;)Z

    .line 1201
    return-void
.end method
