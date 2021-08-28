.class Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;
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

    .line 52
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v0, "PS"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "PS_ALWAYS"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "CS"

    const-string v1, "2"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "CS_ALWAYS"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "PSCS"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "PS_ONLY_PSREGIED"

    const-string v1, "4"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
