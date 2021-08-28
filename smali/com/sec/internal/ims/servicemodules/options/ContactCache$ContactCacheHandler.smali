.class Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;
.super Landroid/os/Handler;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactCacheHandler"
.end annotation


# static fields
.field static final HANDLE_START_CONTACT_SYNC:I


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 721
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 722
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 726
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 728
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HANDLE_START_CONTACT_SYNC : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getContactProviderStatus()I

    move-result v0

    .line 730
    .local v0, "contactProviderStatus":I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 733
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 734
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactProvider is in busy state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const v1, 0x12060003

    const-string v2, "N,CP:BUSY"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_1

    .line 732
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$200(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V

    .line 742
    .end local v0    # "contactProviderStatus":I
    :cond_3
    :goto_1
    return-void
.end method
