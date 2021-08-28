.class Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;
.super Ljava/util/HashMap;
.source "ResipTranslatorCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/translate/ResipTranslatorCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 55
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->TEXT_PLAIN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "message/cpim"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->ISCOMPOSING_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "application/im-iscomposing+xml"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->IMDN:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "message/imdn+xml"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "*"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;->GROUP_SESSION_MANAGEMENT:Lcom/sec/internal/constants/ims/servicemodules/im/SupportedFeature;

    const-string v1, "application/vnd.oma.cpm-groupdata+xml"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method
