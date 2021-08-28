.class Lcom/sec/internal/ims/core/ImsIconManager$3;
.super Landroid/database/ContentObserver;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/ImsIconManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 1146
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChanged"    # Z

    .line 1149
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->access$200(Lcom/sec/internal/ims/core/ImsIconManager;)I

    move-result v1

    const-string v2, "call settins is changed. update icon"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$3;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon(Z)V

    .line 1151
    return-void
.end method
