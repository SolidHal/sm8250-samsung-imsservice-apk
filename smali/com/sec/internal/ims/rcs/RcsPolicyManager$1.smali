.class Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;
.super Landroid/database/ContentObserver;
.source "RcsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/rcs/RcsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/rcs/RcsPolicyManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/rcs/RcsPolicyManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 90
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 91
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 95
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->access$000()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->access$300(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->access$200(Lcom/sec/internal/ims/rcs/RcsPolicyManager;)V

    .line 101
    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/rcs/RcsPolicyManager$1;->this$0:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->access$100(Lcom/sec/internal/ims/rcs/RcsPolicyManager;I)V

    .line 98
    nop

    .line 106
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
