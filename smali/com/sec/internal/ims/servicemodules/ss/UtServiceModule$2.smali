.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;
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

    .line 1072
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 1075
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1077
    .local v0, "airPlaneModeOn":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirplaneModeObserver onChange: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UtServiceModule"

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    if-nez v0, :cond_0

    .line 1079
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo()V

    .line 1082
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1083
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->onAirplaneModeChanged(I)V

    .line 1085
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$100(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_1

    .line 1086
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$100(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z

    move-result-object v3

    aput-boolean v2, v3, v1

    .line 1087
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    .line 1082
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
