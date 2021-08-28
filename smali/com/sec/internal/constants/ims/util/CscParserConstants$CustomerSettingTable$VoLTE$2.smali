.class Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$2;
.super Ljava/util/HashMap;
.source "CscParserConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "CS"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "PS"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
