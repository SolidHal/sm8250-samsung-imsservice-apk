.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;
.super Landroid/database/ContentObserver;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CWDBContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1136
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 1137
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1138
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1142
    const/4 v0, 0x0

    .line 1143
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slot2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    const/4 v0, 0x1

    .line 1147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWDBContentObserver - onChange() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setImsCallWaiting(I)Z

    .line 1149
    return-void
.end method
