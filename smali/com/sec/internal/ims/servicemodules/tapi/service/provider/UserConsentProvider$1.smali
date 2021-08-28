.class Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;
.super Ljava/lang/Object;
.source "UserConsentProvider.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/provider/UserConsentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/tapi/UserConsentProviderContract;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 60
    :cond_0
    return-void
.end method
