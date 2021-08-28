.class Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;
.super Landroid/database/ContentObserver;
.source "NSDSSimEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 92
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    .line 97
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query : Exist simslot on uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->access$200()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->access$300(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V

    .line 105
    :cond_1
    return-void
.end method
