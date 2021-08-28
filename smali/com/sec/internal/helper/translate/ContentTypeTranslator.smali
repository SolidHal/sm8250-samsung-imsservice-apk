.class public Lcom/sec/internal/helper/translate/ContentTypeTranslator;
.super Ljava/lang/Object;
.source "ContentTypeTranslator.java"


# static fields
.field private static final sExtensionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    .line 18
    const-string v1, "ez"

    const-string v2, "application/andrew-inset"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 20
    const-string/jumbo v1, "tsp"

    const-string v2, "application/dsptype"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 23
    const-string v1, "hta"

    const-string v2, "application/hta"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 25
    const-string v1, "hqx"

    const-string v2, "application/mac-binhex40"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 28
    const-string v1, "nb"

    const-string v2, "application/mathematica"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 30
    const-string v1, "mdb"

    const-string v2, "application/msaccess"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 32
    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 34
    const-string v1, "dot"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 36
    const-string v1, "oda"

    const-string v2, "application/oda"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 40
    const-string/jumbo v1, "pdf"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 42
    const-string v1, "key"

    const-string v2, "application/pgp-keys"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "pgp"

    const-string v2, "application/pgp-signature"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "prf"

    const-string v2, "application/pics-rules"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 48
    const-string v1, "cer"

    const-string v2, "application/pkix-cert"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "rar"

    const-string v2, "application/rar"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "rdf"

    const-string v2, "application/rdf+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "rss"

    const-string v2, "application/rss+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "ssf"

    const-string v2, "application/ssf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 58
    const-string v1, "apk"

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 60
    const-string v1, "cdy"

    const-string v2, "application/vnd.cinderella"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 62
    const-string v1, "kml"

    const-string v2, "application/vnd.google-earth.kml+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 64
    const-string v1, "kmz"

    const-string v2, "application/vnd.google-earth.kmz"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "xlt"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "stl"

    const-string v2, "application/vnd.ms-pki.stl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "pps"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, "ppt"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 78
    const-string v1, "odb"

    const-string v2, "application/vnd.oasis.opendocument.database"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 80
    const-string v1, "odf"

    const-string v2, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 82
    const-string v1, "odg"

    const-string v2, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "otg"

    const-string v2, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 86
    const-string v1, "odi"

    const-string v2, "application/vnd.oasis.opendocument.image"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 88
    const-string v1, "ods"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "ots"

    const-string v2, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 92
    const-string v1, "odt"

    const-string v2, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 94
    const-string v1, "odm"

    const-string v2, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "ott"

    const-string v2, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "oth"

    const-string v2, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 100
    const-string v1, "dcf"

    const-string v2, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "ppsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "potx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "xltx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 122
    const-string v1, "docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 126
    const-string v1, "dotx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 130
    const-string v1, "cod"

    const-string v2, "application/vnd.rim.cod"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 131
    const-string v1, "mmf"

    const-string v2, "application/vnd.smaf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "sdc"

    const-string v2, "application/vnd.stardivision.calc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "sda"

    const-string v2, "application/vnd.stardivision.draw"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "sdd"

    const-string v2, "application/vnd.stardivision.impress"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "sdp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "smf"

    const-string v2, "application/ogg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "sdw"

    const-string v3, "application/vnd.stardivision.writer"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "vor"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, "sgl"

    const-string v3, "application/vnd.stardivision.writer-global"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "sxc"

    const-string v3, "application/vnd.sun.xml.calc"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "stc"

    const-string v3, "application/vnd.sun.xml.calc.template"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "sxd"

    const-string v3, "application/vnd.sun.xml.draw"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, "std"

    const-string v3, "application/vnd.sun.xml.draw.template"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "sxi"

    const-string v3, "application/vnd.sun.xml.impress"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "sti"

    const-string v3, "application/vnd.sun.xml.impress.template"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "sxm"

    const-string v3, "application/vnd.sun.xml.math"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "sxw"

    const-string v3, "application/vnd.sun.xml.writer"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "sxg"

    const-string v3, "application/vnd.sun.xml.writer.global"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "stw"

    const-string v3, "application/vnd.sun.xml.writer.template"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, "vsd"

    const-string v3, "application/vnd.visio"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 152
    const-string v1, "7z"

    const-string v3, "application/x-7z-compressed"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 153
    const-string v1, "abw"

    const-string v3, "application/x-abiword"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 154
    const-string v1, "dmg"

    const-string v3, "application/x-apple-diskimage"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 155
    const-string v1, "bcpio"

    const-string v3, "application/x-bcpio"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 156
    const-string/jumbo v1, "torrent"

    const-string v3, "application/x-bittorrent"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 157
    const-string v1, "cdf"

    const-string v3, "application/x-cdf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "vcd"

    const-string v3, "application/x-cdlink"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 159
    const-string/jumbo v1, "pgn"

    const-string v3, "application/x-chess-pgn"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 160
    const-string v1, "cpio"

    const-string v3, "application/x-cpio"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 161
    const-string v1, "deb"

    const-string v3, "application/x-debian-package"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "udeb"

    const-string v3, "application/x-debian-package"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 163
    const-string v1, "dcr"

    const-string v3, "application/x-director"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 164
    const-string v1, "dir"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 165
    const-string v1, "dxr"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 166
    const-string v1, "dms"

    const-string v3, "application/x-dms"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "wad"

    const-string v3, "application/x-doom"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 168
    const-string v1, "dvi"

    const-string v3, "application/x-dvi"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 170
    const-string v1, "gsf"

    const-string v3, "application/x-font"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "pcf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "pcf.z"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 173
    const-string/jumbo v1, "pfa"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "pfb"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 175
    const-string v1, "mm"

    const-string v3, "application/x-freemind"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "spl"

    const-string v3, "application/x-futuresplash"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 177
    const-string v1, "gnumeric"

    const-string v3, "application/x-gnumeric"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 178
    const-string/jumbo v1, "sgf"

    const-string v3, "application/x-go-sgf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 179
    const-string v1, "gcf"

    const-string v3, "application/x-graphing-calculator"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 180
    const-string v1, "gtar"

    const-string v3, "application/x-gtar"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "taz"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "tgz"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 183
    const-string v1, "hdf"

    const-string v3, "application/x-hdf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "xhtml"

    const-string v3, "application/xhtml+xml"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 185
    const-string v1, "ica"

    const-string v3, "application/x-ica"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 186
    const-string v1, "ins"

    const-string v3, "application/x-internet-signup"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 187
    const-string v1, "isp"

    const-string v3, "application/x-internet-signup"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 188
    const-string v1, "iii"

    const-string v3, "application/x-iphone"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 189
    const-string v1, "iso"

    const-string v3, "application/x-iso9660-image"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 190
    const-string v1, "jmz"

    const-string v3, "application/x-jmol"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 191
    const-string v1, "chrt"

    const-string v3, "application/x-kchart"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 192
    const-string v1, "kil"

    const-string v3, "application/x-killustrator"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "skd"

    const-string v3, "application/x-koan"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "skm"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "skp"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "skt"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 197
    const-string v1, "kpr"

    const-string v3, "application/x-kpresenter"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 198
    const-string v1, "kpt"

    const-string v3, "application/x-kpresenter"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 199
    const-string v1, "ksp"

    const-string v3, "application/x-kspread"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 200
    const-string v1, "kwd"

    const-string v3, "application/x-kword"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 201
    const-string v1, "kwt"

    const-string v3, "application/x-kword"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 202
    const-string v1, "latex"

    const-string v3, "application/x-latex"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 203
    const-string v1, "lha"

    const-string v3, "application/x-lha"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 204
    const-string v1, "lzh"

    const-string v3, "application/x-lzh"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 205
    const-string v1, "lzx"

    const-string v3, "application/x-lzx"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 206
    const-string v1, "book"

    const-string v3, "application/x-maker"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 207
    const-string v1, "fb"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 208
    const-string v1, "fbdoc"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 209
    const-string v1, "frame"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 210
    const-string v1, "frm"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 211
    const-string v1, "maker"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 212
    const-string v1, "mif"

    const-string v3, "application/x-mif"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 213
    const-string v1, "msi"

    const-string v3, "application/x-msi"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "wmd"

    const-string v3, "application/x-ms-wmd"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "wmz"

    const-string v3, "application/x-ms-wmz"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "pac"

    const-string v3, "application/x-ns-proxy-autoconfig"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 217
    const-string v1, "nwc"

    const-string v3, "application/x-nwc"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 218
    const-string v1, "o"

    const-string v3, "application/x-object"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "oza"

    const-string v3, "application/x-oz-application"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 220
    const-string/jumbo v1, "pem"

    const-string v3, "application/x-pem-file"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "p12"

    const-string v3, "application/x-pkcs12"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 222
    const-string/jumbo v1, "pfx"

    const-string v3, "application/x-pkcs12"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "p7r"

    const-string v3, "application/x-pkcs7-certreqresp"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 224
    const-string v1, "crl"

    const-string v3, "application/x-pkcs7-crl"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 225
    const-string/jumbo v1, "qtl"

    const-string v3, "application/x-quicktimeplayer"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 226
    const-string/jumbo v1, "sasf"

    const-string v3, "application/x-sasf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 227
    const-string/jumbo v1, "shar"

    const-string v3, "application/x-shar"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "swf"

    const-string v3, "application/x-shockwave-flash"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "sit"

    const-string v3, "application/x-stuffit"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "sv4cpio"

    const-string v3, "application/x-sv4cpio"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "sv4crc"

    const-string v3, "application/x-sv4crc"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "tar"

    const-string v3, "application/x-tar"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "texi"

    const-string v3, "application/x-texinfo"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "texinfo"

    const-string v3, "application/x-texinfo"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 235
    const-string/jumbo v1, "roff"

    const-string v3, "application/x-troff"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "t"

    const-string v3, "application/x-troff"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 237
    const-string v1, "man"

    const-string v3, "application/x-troff-man"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "ustar"

    const-string v3, "application/x-ustar"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 239
    const-string/jumbo v1, "src"

    const-string v3, "application/x-wais-source"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 240
    const-string/jumbo v1, "webarchive"

    const-string v3, "application/x-webarchive"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 241
    const-string/jumbo v1, "webarchivexml"

    const-string v3, "application/x-webarchive-xml"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "wz"

    const-string v3, "application/x-wingz"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 243
    const-string v1, "crt"

    const-string v3, "application/x-x509-ca-cert"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "xcf"

    const-string v3, "application/x-xcf"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 247
    const-string v1, "fig"

    const-string v3, "application/x-xfig"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "zip"

    const-string v3, "application/zip"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "sdoc"

    const-string v3, "application/sdoc"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 250
    const-string/jumbo v1, "show"

    const-string v3, "application/hshow"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 251
    const-string v1, "hwp"

    const-string v3, "application/hancomhwdt"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 252
    const-string v1, "hwt"

    const-string v3, "application/haansofthwt"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 253
    const-string v1, "hwdt"

    const-string v3, "application/hancomhwdt"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 254
    const-string v1, "memo"

    const-string v3, "application/memo"

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 255
    const-string/jumbo v1, "rtx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, "rtf"

    const-string v2, "application/rtf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 257
    const-string/jumbo v1, "spd"

    const-string v2, "application/spd"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "snb"

    const-string v2, "application/snb"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 259
    const-string v1, "3ga"

    const-string v2, "audio/3gpp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 260
    const-string v1, "aac"

    const-string v2, "audio/aac"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 262
    const-string v1, "amr"

    const-string v2, "audio/amr"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 263
    const-string v1, "awb"

    const-string v2, "audio/amr-wb"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "snd"

    const-string v2, "audio/basic"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 266
    const-string v1, "flac"

    const-string v2, "audio/flac"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 267
    const-string v1, "imy"

    const-string v2, "audio/imelody"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 268
    const-string v1, "kar"

    const-string v2, "audio/midi"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 269
    const-string v1, "mid"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 270
    const-string v1, "midi"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "ota"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 272
    const-string/jumbo v1, "rtttl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, "xmf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 274
    const-string v1, "mxmf"

    const-string v2, "audio/mobile-xmf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 276
    const-string v1, "mp4_a"

    const-string v2, "audio/mp4"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 277
    const-string v1, "m4a"

    const-string v2, "audio/mpeg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 278
    const-string v1, "mp2"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 279
    const-string v1, "mp3"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 280
    const-string v1, "mpega"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 281
    const-string v1, "mpga"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 282
    const-string v1, "m3u"

    const-string v2, "audio/mpegurl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 283
    const-string v1, "oga"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 284
    const-string v1, "ogg"

    const-string v2, "audio/ogg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "sid"

    const-string v2, "audio/prs.sid"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "qcp"

    const-string v2, "audio/qcelp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 288
    const-string v1, "aif"

    const-string v2, "audio/x-aiff"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 289
    const-string v1, "aifc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 290
    const-string v1, "aiff"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 291
    const-string v1, "gsm"

    const-string v2, "audio/x-gsm"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 292
    const-string v1, "mka"

    const-string v2, "audio/x-matroska"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "wax"

    const-string v2, "audio/x-ms-wax"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "wma"

    const-string v2, "audio/x-ms-wma"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "ra"

    const-string v2, "audio/x-pn-realaudio"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "ram"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "rm"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 300
    const-string/jumbo v1, "pls"

    const-string v2, "audio/x-scpls"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 301
    const-string/jumbo v1, "sd2"

    const-string v2, "audio/x-sd2"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, "wav"

    const-string v2, "audio/x-wav"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 303
    const-string v1, "bmp"

    const-string v2, "image/bmp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 304
    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 305
    const-string v1, "cur"

    const-string v2, "image/ico"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 307
    const-string v1, "ief"

    const-string v2, "image/ief"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 308
    const-string v1, "jpe"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 309
    const-string v1, "jpeg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 310
    const-string v1, "jpg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 311
    const-string v1, "map"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 313
    const-string/jumbo v1, "pcx"

    const-string v2, "image/pcx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 314
    const-string/jumbo v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 315
    const-string/jumbo v1, "svg"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 316
    const-string/jumbo v1, "svgz"

    const-string v2, "image/svg+xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "tif"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 318
    const-string/jumbo v1, "tiff"

    const-string v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 319
    const-string v1, "djv"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 320
    const-string v1, "djvu"

    const-string v2, "image/vnd.djvu"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 321
    const-string/jumbo v1, "wbmp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 322
    const-string/jumbo v1, "webp"

    const-string v2, "image/webp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "ras"

    const-string v2, "image/x-cmu-raster"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 324
    const-string v1, "cdr"

    const-string v2, "image/x-coreldraw"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, "pat"

    const-string v2, "image/x-coreldrawpattern"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 326
    const-string v1, "cdt"

    const-string v2, "image/x-coreldrawtemplate"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 327
    const-string v1, "cpt"

    const-string v2, "image/x-corelphotopaint"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 328
    const-string v1, "ico"

    const-string v2, "image/x-icon"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 329
    const-string v1, "art"

    const-string v2, "image/x-jg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 330
    const-string v1, "jng"

    const-string v2, "image/x-jng"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "psd"

    const-string v2, "image/x-photoshop"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 333
    const-string/jumbo v1, "pnm"

    const-string v2, "image/x-portable-anymap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 334
    const-string/jumbo v1, "pbm"

    const-string v2, "image/x-portable-bitmap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 335
    const-string/jumbo v1, "pgm"

    const-string v2, "image/x-portable-graymap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "ppm"

    const-string v2, "image/x-portable-pixmap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 337
    const-string/jumbo v1, "rgb"

    const-string v2, "image/x-rgb"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 338
    const-string/jumbo v1, "xbm"

    const-string v2, "image/x-xbitmap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 339
    const-string/jumbo v1, "xpm"

    const-string v2, "image/x-xpixmap"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 340
    const-string/jumbo v1, "xwd"

    const-string v2, "image/x-xwindowdump"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 341
    const-string v1, "iges"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 342
    const-string v1, "igs"

    const-string v2, "model/iges"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 343
    const-string v1, "mesh"

    const-string v2, "model/mesh"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 344
    const-string v1, "msh"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 345
    const-string/jumbo v1, "silo"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 346
    const-string v1, "ics"

    const-string/jumbo v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 347
    const-string v1, "icz"

    const-string/jumbo v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 348
    const-string v1, "csv"

    const-string/jumbo v2, "text/comma-separated-values"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 349
    const-string v1, "css"

    const-string/jumbo v2, "text/css"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 350
    const-string v1, "323"

    const-string/jumbo v2, "text/h323"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 351
    const-string v1, "htm"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 352
    const-string v1, "html"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 353
    const-string/jumbo v1, "uls"

    const-string/jumbo v2, "text/iuls"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 354
    const-string v1, "mml"

    const-string/jumbo v2, "text/mathml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 355
    const-string v1, "asc"

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 356
    const-string v1, "diff"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 357
    const-string/jumbo v1, "po"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 359
    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 362
    const-string/jumbo v1, "tsv"

    const-string/jumbo v2, "text/tab-separated-values"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 364
    const-string/jumbo v1, "phps"

    const-string/jumbo v2, "text/text"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 366
    const-string v1, "bib"

    const-string/jumbo v2, "text/x-bibtex"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 367
    const-string v1, "boo"

    const-string/jumbo v2, "text/x-boo"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 368
    const-string v1, "h++"

    const-string/jumbo v2, "text/x-c++hdr"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 369
    const-string v1, "hh"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 370
    const-string v1, "hpp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 371
    const-string v1, "hxx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 372
    const-string v1, "c++"

    const-string/jumbo v2, "text/x-c++src"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 373
    const-string v1, "cc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 374
    const-string v1, "cpp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 375
    const-string v1, "cxx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 376
    const-string v1, "h"

    const-string/jumbo v2, "text/x-chdr"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 377
    const-string v1, "htc"

    const-string/jumbo v2, "text/x-component"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 378
    const-string v1, "csh"

    const-string/jumbo v2, "text/x-csh"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 379
    const-string v1, "c"

    const-string/jumbo v2, "text/x-csrc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 380
    const-string v1, "d"

    const-string/jumbo v2, "text/x-dsrc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 381
    const-string v1, "hs"

    const-string/jumbo v2, "text/x-haskell"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 382
    const-string v1, "java"

    const-string/jumbo v2, "text/x-java"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 383
    const-string v1, "lhs"

    const-string/jumbo v2, "text/x-literate-haskell"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "xml"

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 385
    const-string v1, "moc"

    const-string/jumbo v2, "text/x-moc"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 386
    const-string/jumbo v1, "p"

    const-string/jumbo v2, "text/x-pascal"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "pas"

    const-string/jumbo v2, "text/x-pascal"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 388
    const-string v1, "gcd"

    const-string/jumbo v2, "text/x-pcs-gcd"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 389
    const-string v1, "etx"

    const-string/jumbo v2, "text/x-setext"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "tcl"

    const-string/jumbo v2, "text/x-tcl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 391
    const-string v1, "cls"

    const-string/jumbo v2, "text/x-tex"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 392
    const-string v1, "ltx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "sty"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "tex"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 395
    const-string/jumbo v1, "vcs"

    const-string/jumbo v2, "text/x-vcalendar"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 396
    const-string/jumbo v1, "vcf"

    const-string/jumbo v2, "text/x-vcard"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "vnt"

    const-string/jumbo v2, "text/x-vnote"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "vts"

    const-string/jumbo v2, "text/x-vtodo"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 400
    const-string v1, "3gpp"

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 401
    const-string v1, "3g2"

    const-string/jumbo v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 402
    const-string v1, "3gpp2"

    const-string/jumbo v2, "video/3gpp2"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 403
    const-string v1, "avi"

    const-string/jumbo v2, "video/avi"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 404
    const-string v1, "divx"

    const-string/jumbo v2, "video/divx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 405
    const-string v1, "dl"

    const-string/jumbo v2, "video/dl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 406
    const-string v1, "dif"

    const-string/jumbo v2, "video/dv"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 407
    const-string v1, "dv"

    const-string/jumbo v2, "video/dv"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 408
    const-string v1, "fli"

    const-string/jumbo v2, "video/fli"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 410
    const-string v1, "m4v"

    const-string/jumbo v2, "video/m4v"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 411
    const-string/jumbo v1, "ts"

    const-string/jumbo v2, "video/mp2ts"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 413
    const-string v1, "mpe"

    const-string/jumbo v2, "video/mpeg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 414
    const-string v1, "mpeg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 415
    const-string v1, "mpg"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 416
    const-string/jumbo v1, "vob"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 418
    const-string v1, "mov"

    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 419
    const-string/jumbo v1, "qt"

    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 420
    const-string v1, "mxu"

    const-string/jumbo v2, "video/vnd.mpegurl"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 421
    const-string/jumbo v1, "webm"

    const-string/jumbo v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 422
    const-string v1, "lsf"

    const-string/jumbo v2, "video/x-la-asf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 423
    const-string v1, "lsx"

    const-string/jumbo v2, "video/x-la-asf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 424
    const-string v1, "mkv"

    const-string/jumbo v2, "video/x-matroska"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 425
    const-string v1, "mng"

    const-string/jumbo v2, "video/x-mng"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 427
    const-string v1, "asx"

    const-string/jumbo v2, "video/x-ms-asf"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "wm"

    const-string/jumbo v2, "video/x-ms-wm"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 430
    const-string/jumbo v1, "wmv"

    const-string/jumbo v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 431
    const-string/jumbo v1, "wmx"

    const-string/jumbo v2, "video/x-ms-wmx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "wvx"

    const-string/jumbo v2, "video/x-ms-wvx"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 433
    const-string v1, "movie"

    const-string/jumbo v2, "video/x-sgi-movie"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "wrf"

    const-string/jumbo v2, "video/x-webex"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 435
    const-string v1, "flv"

    const-string/jumbo v2, "video/Flv"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "trp"

    const-string/jumbo v2, "video/mp2ts"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 437
    const-string v1, "ice"

    const-string/jumbo v2, "x-conference/x-cooltalk"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 438
    const-string/jumbo v1, "sisx"

    const-string/jumbo v2, "x-epoc/x-sisx-app"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->sExtensionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTranslationDefined(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 448
    sget-object v0, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->sExtensionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator;->isTranslationDefined(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->sExtensionTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
